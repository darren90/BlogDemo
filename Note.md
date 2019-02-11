我们称Module中的Section为ModuleSection。
一个Modules Group中所有Module的所有ModuleSection默认会在实际的UITableView中被合并成一个Section来渲染(除非自定义Link Type，后续会介绍)。


NVBaseModule也是UIViewController的子类，它创建后会作为childViewController加入页面。


当TableView reloadData时shouldShow为YES的模块会触发willAppear和didAppear，shouldShow为NO的模块会触发willDisappear和didDisappear，此外页面viewController的Lifetime Events也会同时触发Module的appearType的改变。


NVBaseModule的Link Type默认回 NVBaseModuleLinkTypeLinkPrevious | NVBaseModuleLinkTypeLinkNext，所以一个Modules Group下的所有ModuleSection默认会合并成一个Section。
如果有单一Module有多个ModuleSection，又希望在实际的TableView中被分成多个Section的，可以重写 - (NVBaseModuleLinkType)linkTypeInSection:(NSInteger)section，回NVBaseModuleLinkTypeDefault


## 
模块化框架用来渲染视图的TableView基类为NVBaseModulesTableView，是NVTableView的子类，所以模块化框架的自动添加分割线是基于NVTableView的。


自动添加分割线的规则是：一个Section中，第一个Cell顶部会添加一根长线，最后一个Cell底部也会添加一根长线，Cell之间都会添加一根短线。NVTableView有一个seperatorMargin属性，决定了短间隔线的头部距TableView边缘的距离。


### 如要自定义Cell，引入 UITableViewCell+Custom.h



### Reload
页面和模块基类均实现了NVBaseModulesUpdateProtocol协议。
Reload TableView：
- (void)needReloadTableView
- (void)needReloadTableViewWithAnimation:(BOOL)needAnimation completion:(NVUIBlock)completion
一般情况下均使用这两个方法对整个TableView进行Reload，不要直接使用 [self.tableView reloadData]。
Completion Block只有在needAnimation为YES时才会生效。




### NVBaseModule也是UIViewController的子类，它创建后会作为childViewController加入页面。
模块创建后会触发 - (void)setupModule方法，可以在这个方法中做一些初始化的操作。






 



NVFindNearbyModule

NVFindNearByCell




dianping://web?url=https%3A%2F%2Fg.dianping.com%2Fapp%2Fapp-home-design-peon%2Fcp%2Fcp1611lp_dp%2Findex.html%3Ftoken%3D*%26cityid%3D*%26dpid%3D*%26latitude%3D*%26longitude%3D*


ab_b_dphome_channel_iconrec&default




Images.xcassets

houseshopheaderpicscesll


家装底部-装修设计的cell中的图片点击进入的控制器
--HOUSECaseDetail
	--HOUSEDesignCaseDetailViewController

GCBusiness:
BabyProductRecommendCell



NVBaseModulesTableViewController

### Demo

	HOUSECaseDetailBaseInfoTopCell

	HOUSECaseDetailFeeModule


/mapi/wedding/homeproductdetailpics.bin

/mapi/wedding/homedesigncasedetail.bin

UIView+ResizeFrame.h
UIView+Layout.h

# Summery2
  ## 1 - 星星view: TGShopStar


# Summery

## 1 - 页面结构
		1. DemoVC 继承 NVBaseModulesTableViewController，实现`- (NSArray *)modules`方法
		2. DemoModule 继承 NVBaseModule(其实也是控制器类) ，在`- (void)
		setupModule`中初始化子控件，返回UITableview的几个代理方法，并且在setmodel方法中调用`[self needReloadTableView];方法
			2.1 在DemoModule中通过cell进行页面的布局
		3. 上面的两层传递参数通过`whiteBoard signalForKey`传递
		4. 自定义cell直接继承UITableViewCell即可

		5.1. 你的module需要继承  GCBaseModule 或者 GCBaseListModule，如果页面的各个模块UI不一致，业务也相对独立，请继承 GCBaseModule；如果界面是列表样式，即每个 cel l或者每组 section 长相差不多，这时适合使用 GCBaseListModule；

		## NV --> GC
		NVBaseModule --> 					  GCBaseModule，
		NVBaseModulesTableViewController -->  GCBaseModulesViewController
		NVBaseMarginCell --> 				  GCBaseMarginCel
											  GCBaseMarginCell


## 2 - 页面跳转
	NVURLAction *toListAction = [NVURLAction actionWithURL:[NSURL URLWithString:self.feeInfo.url]];
   [[NVNavigator navigator] openURLAction:toListAction];

## 3 - 计算行高的代码放到cell中
	cell暴露行高以及设置数据的方法。


## 4 - 通过`UIView+ResizeFrame.h`布局时使用top, left bottom, right

## 5 - 跳转的vc类对应的url在`urlmapping`文件中定义
	比如：HOUSEDesignCaseDetailViewController ： homecasedetail
				   NVShopInfoShellController ： shopinfo   
		  GCProductDetailShellViewController ：gcproductdetail


## 6 - 跳转到具体的页面：

		NVURLAction *detailAction = [NVURLAction actionWithURL:[NSURL URLWithString:@"dianping://shopinfo"]];
        [detailAction setInteger:self.shop.shopId forKey:@"id"];
        [[NVNavigator navigator] openURLAction:detailAction];

## 7 - 悬浮cell：
		Module方式 ： NVBaseHoverTopModule及NVBaseHoverBottomModule ： 推荐
		Cell方法 ： NVBaseHoverTopCell及NVBaseHoverBottomCell

##  - 宫格排布还是画的view不是使用的UICollectionView


## - TODO 网络请求 RAC 怎么搞
	api写在 NVNetworkClient+mapi
	比如：/mapi/wedding/homedesigncasedetail.bin

	mparam_homedesigncasedetail_bin : 只需要记中间的部分的参数


# 问题

1： 跳转url： dianping://web?url=https%3A%2F%2Fm.dianping.com%2Fhouse%2Fmobile%2Fcase%2Fdetail%2Fprice%2F1508112%3Fdpid%3D6112076467453653103%26userid%3D0
最后跳转的web地址是：https://m.dianping.com/house/mobile/case/detail/price/1508112?dpid=6112076467453653103&userid=0&product=dpapp

dianping://web?url=https%3A%2F%2Fm.dianping.com%2Fshop%2F19378150%2Fm%2Fhome%2Fdesigner%2F9898%3Fdpid%3D6112076467453653103%26userid%3D0
最后的跳转地址：https://m.dianping.com/shop/19378150/m/home/designer/9898?dpid=6112076467453653103&userid=0&product=dpapp

2：网络请求后，是怎么转化为具体的模型


3: modules数组中的key可以使任意值吗

4：有些类继承与NVViewController，而不是NVBaseModulesTableViewController而且继承于NVBaseModulesTableViewController的类也不多

5: cell继承与GCBaseMarginCell还是UITableviewCell

6：跳转：用

		NVURLAction还是GCURLAction？

		GCURLAction *detailAction = [GCURLAction new];
        detailAction.url = [NSURL URLWithString:url];
        [[GCStyle style] openURLAction:detailAction withViewController:self.mappingDelegate.viewController]

	[[NVNavigator navigator] openURLAction:action];

7. 有的module继承于NVBaseModule 有的继承于 GCBaseModule
		比如：BabyDealDetailPackageModule 继承 GCBaseModule

	7.1继承于GCBaseModule的控制器是否要继承于GCBaseModulesViewController





performVauleOnDP
performValueOnDP




## @"全套案例",@"灵感空间"继承于NVViewController

	带有下拉刷新 GCSkuListViewController : GCBaseModulesViewController
									NVBaseModulesTableViewController





商详 ： 商品详情页
团详 ： 团购详情页
商户详情页 : NVShopInfoController
案例详情页


 -- house_material_market

# 项目开始

## 1. 网络处理
		#import "NVNetworkClient+homedesigncasedetail_bin.h"


## 1.2 网络错误处理：  

		#import "NVSimpleMsg.h"
		#import "NVSimpleMsg+UI.h"

		 NVSimpleMsg *msg = [[NVSimpleMsg alloc] initWithTitle:nil content:error.nv_message flag:error.nv_statusCode];
        [msg show];
 
## 2. 分享

	// import
	#import "R.h"
	#import "NVShareObject.h"

	// add share btn
    UIBarButtonItem *share = [[UIBarButtonItem alloc] initWithImage:[UIImage imagenamed:R_Title_icon_Share] style:UIBarButtonItemStylePlain target:self action:@selector(share)];
    self.navigationItem.rightBarButtonItem = share;

    //share action
	 - (void)share{
	    if (self.caseDetailResult.title.length > 0 && self.caseDetailResult.webUrl.length > 0){
	        NVShareObject *share = [NVShareObject new];
	        share.title = self.caseDetailResult.title;
	        share.url = self.caseDetailResult.webUrl;
	        share.image = self.caseDetailResult.imageUrl;
	        share.desc = self.caseDetailResult.desc;
	        @weakify(self);
	        share.shareBlock = ^(NVShareType shareType, ShareStatus status, NSString *errorString) {
	            @strongify(self);
	            [self ga_logEventType:NVGaEventTypeTap forLabel:@"shared" userInfo:self.ga_userinfo];
	        };
	        [share shareInViewController:self];
	    }
	}

## 3. 打点



## 4. 新建文件
	新建文件需要在右边的target membership中指向为houseDecoration，才能编译过，否则引文件报错

## 跳转

	#import "GCURLAction.h"
	#import "GCStyle.h"


		GCURLAction *detailAction = [GCURLAction new];
        detailAction.url = [NSURL URLWithString:url];
        [[GCStyle style] openURLAction:detailAction withViewController:self.mappingDelegate.viewController];

## tableview取消选中
	#import "GCBaseModule+TableViewEvents.h"

	 [self deselectRowAtIndexPath:indexPath animated:YES];



-- sizethatfits
提示@符号无用，直接再次编译就好了
#import "NVBaseModule.h"
#import "NVBaseModuleProtocol.h"
#import "NVBaseModuleUpdateProtocol.h"

添加头文件，编译即可

## import

GCGridCellItem 布局单元格
GCMoreDealsModule 有单元格使用的案例

#import "GCBaseModule+URLAction.h"
#import "UIResponder+GCReportGA.h"



商户详情页面：NVShopInfoController


//跳转路由配置
urlmapping
//module路由配置类
modulemapping 
ModulesConfig


//单元格
GCGridCell 

GCGridCellItem


GCBaseListModule



@[@"shop_renovation_design" , @"shop_renovation_design"];

@[@"shop_renovation_design_booking", @"shop_renovation_design"]



页面开发 ：sizethatfits

## 轮播图：HOUSEShopHeaderPicsCesll , 对应的modul ： HOUSEHeaderPicsModule



weddingproductbase



//默认属性增加的高度
heightForExtraLastSectionFooter


667
647 - 


草木时空鲜花 - 团购 - GCMoreDealsModule



education


HOUSEShopInfoToolBarView



教育底部bar
-- EDUBottomToolBarModule

//两边都要用的类
GCBussion



//list模型
BabyShopInfoPackageListModule : GCGridModule




NVBaseResultList



NVBaseHoverBottomModule


HOUSECaseDetailConstantBottomModule



商详页：NVShopInfoController





------

下拉刷选页面







git -c diff.mnemonicprefix=false -c core.quotepath=false -c credential.helper=sourcetree commit -q -F /var/folders/k0/qkcvzvt57y7gx62l6tv3j9gc0000gn/T/SourceTreeTemp.o12iGJ -a 


git -c diff.mnemonicprefix=false -c core.quotepath=false -c credential.helper=sourcetree push -v --tags --set-upstream origin refs/heads/development:refs/heads/development 
Pushing to ssh://git@git.sankuai.com/ios/imeituan-education.git
fatal: remote error: Insufficient permissions
warning warning warning warning warning
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
hi fengtengfei
You cannot push to IOS/imeituan-education. Pushing requires write access and your access is read-only.
you can contact admin of this repository to grant you permission
access code api http://git.sankuai.com/rest/api/2.0/projects/IOS/repos/imeituan-education/admin
you can get admin list of this repository IOS/imeituan-education[13812]
any question, please click https://wiki.sankuai.com/pages/viewpage.action?pageId=892063803 

fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
Completed with errors, see above

 
APPkit 模块池


    
   BaseModuleArray baseArray = [[GCDynamicRouterData sharedInstance] dynamicModulesFromTemplateKey:
     self.modulesExtraInfo.length > 0?
     @[[self.modulesKey stringByAppendingFormat: @"_%@", self.modulesExtraInfo], self.modulesKey, GCMerchantAppKitDefaultKey]:
     @[self.modulesKey, GCMerchantAppKitDefaultKey]
     ];
    NSMutableArray *arr = [NSMutableArray arrayWithArray:baseArray];
    [arr insertObject:@[@[@"HOUSEHeaderNoBookingModule", @"HOUSEHeaderNoBookingModule"]] atIndex:1];
    [arr insertObject:@[@[@"HOUSERecomModule", @"HOUSERecomModule"]] atIndex:2];
    [arr insertObject:@[@[@"EDUCmsVideoListModule",@"EDUCmsVideoListModule"]] atIndex:3];
    
    return arr;



路径下：/Users/fengtf/Documents/MTDP/GCBusiness
执行：ruby image_ids.rb



GCMerchantQueryModule


GCScrollCell




问题：
我发版到点评了。是不是点评这次发布会把代码带上去





# 列表筛选也：

休闲娱乐 -> 足疗按摩 -> 顶部








您可以覆盖一个子类中的layoutSubviews，以便在布局过程中进行操作。如果您不使用autolayout，则默认情况下，layoutSubviews不会执行任何操作; layoutSubviews是您在自动调整发生后执行手动布局的机会。如果您使用autolayout，您必须调用超级或应用程序将崩溃（有用的错误消息）。
 
你不应该直接调用layoutSubviews;触发对layoutSubviews的即时调用，发送查看layoutIfNeeded消息（可能会导致整个视图树的布局，不仅在下面，而且在此视图之上），或者发送set- NeedsLayout以触发对layoutSubviews的调用。代码完成运行后，布局通常会发生。

layoutSubviews
    此方法用来重新定义子元素的位置和大小。当子类重写此方法，用来实现UI元素的更精确布局。如果要让布局重新刷新，那么就调用setNeedsLayout
    setNeedsLayout方法并不会立即刷新，立即刷新需要调用layoutIfNeeded方法。

setNeedsLayout layoutIfNeeded



    [self setNeedsLayout];
    [self layoutIfNeeded];


setNeedsDisplay




- layoutSubviews
- layoutIfNeeded(autolayout动画)
setNeedsLayout()
setNeedsDisplay(调用drawRect方法，绘图)
drawRect
sizeThatFits
sizeToFit


# DP9.4 接口

http://m.dper.com/newmodel/detailModel.html?type=detail&modelId=8457

//筛选 skulist
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=3445

//卖场
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=3808

//低于四星，替换的接口，
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4007

http://m.dper.com/newapi/detailApi.html?type=detail&apiId=3992

//卖场时间
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4017

//足浴 筛选 categorynavilist
http://m.dper.com/newapi/detailbyname.html?apiname=categorynavilist.bin

# 模型
NVModelBaseEduCMSVideoListDo
educmsvideo
NVModelBasehomemarketdeal


# 列表：

skulist                                 : GCSkuListViewController


# DP9.4 - 家装：
1：卖场增加热门团购模块 	-- 完成：100% 待测试
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=3992
2：商户案例，接口调整 		-- 完成：100% 待测试
旧：homedesignproductlist.bin
新：http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4007
3：无忧装  				-- 完成：100% 待测试
无接口
4：营业时间 				-- 完成：100% 待测试 
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4017
5：筛选 - 列表   		    -- 完成：100% 待测试
08月09重做筛选
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=3445
dianping://skulist?bizname=decomaterial&shopid=17685927
筛选 MT取值参考： GCDealListViewController


# DP9.4 - 教育  			-- 完成：60% 待数据 待测试
1：学校主页广告轮播 - 循环，自动
GCScrollView.h  -- GCScrollViewStyleLoopPage autoLoopInterval


# MT8.5  商户案例，接口调整 （和美团用的module不一样）		-- 完成：0% 待测试
旧：homedesignproductlist.bin
新：http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4007

# 问题
轮播点点，以及 时间换行
 
git@code.dianpingoa.com:mobile/gcdynamicrouter.git

HOUSEHotGroupTitleCell

imeituan://www.meituan.com/dealDispatch?convertTrack=855132762657669120_v893387952098639801_108&dealID=43829365&stid=006964724957105058126064159085879103518_f125180578&channel=education&business=poiid%3D125180578



NVNetworkClient+homemarketdeal_bin


# 打点
案例的tap已经打了 ： HOUSEShopCaseInfoModule
#import "UIResponder+GCReportGA.h"

1. View点的打法 / Module展示打点：

- (BOOL)needAutoModuleView {
    return YES;
}

- (GCMGEInfo *)gc_mge_info {
    return GCMGEInfo.category(@"gc").bid(@"b_36U3L").lab(@"poi_id", @(self.shopId));
}


2. Click点的打法

cell/view.gcMGEInfo = GCMGEInfo.category(@"gc").bid(@"b_F7BSB").lab(@"poi_id", @(self.shopId)).custom(@"product_id",@(product.productId));

// 直接打
[self gc_reportMGEInfo:GCMGEInfo.category(@"gc").bid(@"b_6J6An").lab(@"poi_id", @(self.shopId)) eventType:SAKStatisticsEventClick];




图片	图片tap	tap	b_fgprrdrd
装修费用详情	装修费用详情tap	tap	b_utl1079e
案例设计师详情	案例设计师详情tap	tap	b_ryfdi94c	designer_id,
case_id


1：tap == click?
2：UIResponder+informer.h 是废弃的
3：模块的view点，，，？
4: 两个控制器：子控制器打点  : 放到容器里面 -> WEDHomeShopCasePhotoShellController  WEDHomeCaseListController
5: 依赖两个id(peoductId, designId)值得获取，： 方法是同步的
6： MT +load页面参数怎么设置 ： 和Android设置一样即可
7: .lab .customer 参数具体怎么放 ，lab是不是只加poi_id ？,有什么原则？
	一般是这样的，具体原则，看打点页面底下的示例代码
8： 模块的展示店 == view店
setNeedsLayout
10： 模块池配置后，还需要页面配置，模块才会加载，测试要自己打个包
11： 教育用伟博英语（静安环球大厦中心） - 合作商户
12:  简洁的带有返回值的可以用[GCStyle selectValueOnDP]简洁一些


## 问题：
1: 区分模块view点和view点

1: modulemapping怎么提交
2：View点怎么打
3：图片资源的，发版怎么发的？



WeddingProductBase
WeddingModuleDPMT
duplicate symbol _OBJC_IVAR_$_WEDSingleGoodsSimpleViewDisplayCell._simpleViewArray in
> libWeddingModuleDPMT.a(WEDSingleGoodsSimpleViewDisplayCell.o)
> libWeddingProductBase.a(WEDSingleGoodsSimpleViewDisplayCell.o)

WEDSingleGoodsSimpleViewDisplayCell
WEDSingleGoodsSimpleViewDisplayCell
WEDSingleGoodsSimpleViewDisplayCell

# 跳转：
dianping://homeshopcaselist?id=8011886
dianping://skulist?bizname=decocase&searchItem=277
//新做的
dianping://skulist?bizname=decomaterial&searchItem=2
dianping://skulist?bizname=decomaterial&shopid=17685927

// MT跳转
imeituan://www.meituan.com/gc/skulist?bizname=decomaterial&shopid=17685927


homeshopcaselist                        : WEDHomeShopCasePhotoShellController
skulist                                 : GCSkuListViewController


//接受url带入参数
- (BOOL)handleWithURLAction:(NVURLAction *)urlAction {
    self.shop = (NVShop *)[urlAction anyObjectForKey:@"shop"];
    if (self.shop) {
        self.shopId = self.shop.uid;
    } else {
        self.shopId = [[urlAction stringForKey:@"id"] intValue];
        [self queryShop:self.shopId];
    }
    if (self.shopId == 0) {
        return NO;
    }
    self.categoryDesc = [urlAction stringForKey:@"categoryDesc"];
    self.selectedPhotoType = [urlAction integerForKey:@"officialPhotoType"];
    if( self.categoryDesc == nil){
        self.categoryDesc = @"产品";
    }
    return [super handleWithURLAction:urlAction];
}

bizname = @"decocase"
searchItem = @"277"

//自定算高度
BabyShopInfoHeadMerchantCell


SchoolAdverCell


 

1  单端 - 点评 
1.1 家装 卖场增加热门团购模块：poi_house_deal_group
1.2 教育  学校主页广告轮播: poi_edu_school_banner

2 双端 
2.1 家装 营业时间 : poi_house_business_hour
 
 
院校类商户详情页横幅


DP商品列表页	 :  到综SKU 列表页
装修设计商户详情页_案例列表页  :  
装修设计商户详情页_案例详情页  :



- (BOOL)shouldShow {
    return NO;//self.homeShopInfo.homeBookingBar.leftBar.count > 0 || self.homeShopInfo.homeBookingBar.rightBar.count > 0;
}




105

(lldb) po self.area.bottom
152

(lldb) po self.price.bottom
145

(lldb) po self.frame
(origin = (x = 165, y = 0), size = (width = 140, height = 155))

(lldb) po self.imageView.frame
(origin = (x = 0, y = 0), size = (width = 140, height = 105))




(lldb) po self.imageView.frame
(origin = (x = 0, y = 0), size = (width = 140, height = 105))

(lldb) po self.frame
(origin = (x = 0, y = 0), size = (width = 140, height = 155))


HOUSECaseInfoModuleViewModel : GCBaseModuleViewModel

HOUSEShopMaterialHeadImageModuleViewModel : HOUSEMaterialHeadImageModuleViewModel
HOUSEShopMaterialHeadImageModuleViewModel





NVModelBaseHomeDesignProduct
NVModelBaseHomeDesignRecProduct


# 未做 

b_8m4cx0ht

待做：3-9

turbos 9.4.0.2


DPPods_iphone-nova



feature/house_9.4.0_modulemapping
feature/wed_9.4.0_house_huang




# 可疑点
-DP
EDUTeacherModule
b_3dxlljl8

-MT
EDUVideoTagModule
b_lifc2z6p

EDUTeacherModule
b_3dxlljl8



b_y1br5nkp

 
picassomodule




{
    "__name": "HomeBusinessHour",
    "BusinessHour": "周一至周五 上午8:00-晚上20:00\n周六至周天 上午8:00-晚上20:00",
    "Title": "营业时间"
}


file:///Users/fengtf/Desktop/DP9.4/20170721%20家装卖场%20团促列表页

13615679660

Gogoswift12306



TestPluginDemo


## --
2017-08-30 14:24:54.089 DPScope[61117:2569905] -pp-aar-: (
	(
	(
	productdetail_gc_piclist,
	GCProductDetailPicListModule
)

)

)

2017-08-30 14:24:54.095 DPScope[61117:2569905] -pp-aar-: (
	(
	(
	picasso_productdetail_gc_packagelist,
	PicassoModule
)

)

)
2017-08-30 14:24:54.099 DPScope[61117:2569905] -pp-aar-: (
	(
	(
	productdetail_baby_shoprecommend,
	BabyProductDetailShopRecommendModule
)

)
,
	(
	(
	midas_productad,
	NVMidasProductAdModule
)

)

)



<GCProductDetailShellViewController: 0x7fd1c6c5dd60>


# 使用Picasso开发的
JOYDealDetailPicassoPackageModule

# jsname: picasso_productdetail_gc_packagelist

# jscontent: 

var _dp_picassoModule=require("@dp/picasso-module"),PCSB_moduleWhiteBoard={get:function(b){context.sendMessage("moduleWhiteBoard","get",b)},observe:function(b){context.sendMessage("moduleWhiteBoard","observe",b)},set:function(b){context.sendMessage("moduleWhiteBoard","set",b)}},PCSB_moduleMapi={mapiRequest:function(b){context.sendMessage("moduleMapi","mapiRequest",b)}},__extends=function(){var b=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(c,a){c.__proto__=a}||function(c,a){for(var b in a)a.hasOwnProperty(b)&&
(c[b]=a[b])};return function(c,a){function d(){this.constructor=c}b(c,a);c.prototype=null===a?Object.create(a):(d.prototype=a.prototype,new d)}}(),GCProductDetailPackageListModule=function(b){function c(){var a=null!==b&&b.apply(this,arguments)||this;a.productId=0;a.jsnameForTitle="productdetail_gc_packagelist_title";a.jsnameForDetail="productdetail_gc_packagelist_detail";return a}__extends(c,b);c.prototype.onLoad=function(){var a=this;this.painting({loadingStatus:1});PCSB_moduleWhiteBoard.get({requiredKeys:["productId"],
success:function(b){a.productId=b.productId;a.loadPackageList()}})};c.prototype.loadPackageList=function(){var a=this;PCSB_moduleMapi.mapiRequest({url:"http://mapi.dianping.com/mapi/wedcommon/productpropdetailgroup.bin",param:{productId:this.productId},jsArray:[this.jsnameForTitle,this.jsnameForDetail],cacheType:0,success:function(b){a.painting(a.makeupModuleInfo(b))},fail:function(){a.painting({loadingStatus:2})}})};c.prototype.makeupModuleInfo=function(a){var b=this,c={};null!=a.groupProperties&&
0<a.groupProperties.length?c.sectionInfos=a.groupProperties.map(function(a){var c={};c.headerCellInfo={type:0,jsname:b.jsnameForTitle,data:{groupname:a.groupname},reuseIdentifier:"title",autoMargin:!0};null!=a.propertyList&&(c.cellInfos=a.propertyList.map(function(a){return{type:0,jsname:b.jsnameForDetail,data:a,reuseIdentifier:"detail",autoMargin:!0}}));c.linkType=0;return c}):c.isEmpty=!0;return c};c.prototype.retryForLoadingFail=function(){this.loadPackageList()};return c}(_dp_picassoModule.PicassoModule);
Picasso.Module(GCProductDetailPackageListModule);









{
    "__name": "Picasso",
    "data": "{
    "__name": "HomeExhibitionShopInfo",
    "ToPageUrl": "dianping://tuandeal?id=2091683",
    "Details": [
        "我会学着放弃你,是因为我太爱你",
        "Just not for long, for long,"
    ],
    "CoverPic": "http://m1.s1.dpfile.com/sc/api_res/eleconfig/201506041753311.png",
    "Title": "这是个标题!!",
    "ToPageDesc": "'Cause we could be Immortals, Immortals,"
}",
    "fuck64kdatalist": null,
    "datalist": null,
    "js": [
        {
            "__name": "PicassoJS",
            "content": null,
            "name": "productdetail_gc_packagelist_detail",
            "hashcode": "a90e5b5f8578e788"
        },
        {
            "__name": "PicassoJS",
            "content": null,
            "name": "productdetail_gc_packagelist_title",
            "hashcode": "f5efab0afd762772"
        }
    ]
}


//Loading状态
this.painting({ loadingStatus: PM_LoadingStatus.Loading });


this.paintingCell(<PM_NormalCellInfo>{
    type:PM_cellType.Normal,
    jsname: this.jsnameForTitle,
    data:successResponse
})


# js调试
this.painting(<PM_ModuleInfo>{
    isEmpty: true,
    emptyMessage: info.jumpUrl
});


 # rollup.config.js
 设置只编译某一路径下的文件


selectionStyle: PM_SelectionStyle.Default,
didSelectCallback: this.getFunctionname(this.headerClickAction)


sceneTitle

error: Your local changes to the following files would be overwritten by merge:
	dist/BabyJoyShopInfo/shopguide/.js
	dist/BabyJoyShopInfo/shopinstruction/.js
	dist/ProductDetail/packageform/.js
	dist/ProductDetail/packagelist/.js
Please commit your changes or stash them before you merge.









dianping://houseskulist?items=277&bizname=decocase



https://h5.dianping.com/app/app-home-design-peon/cp/cp1611lp_dp/?cityid=1&source=s



展会在线预订：poi_house_exhibition_order


展会地址电话：poi_house_exhibition_addrPhone

装修队长：poi_house_design_captain

展会信息：picasso_house_gc_exhibitionshopinfo
展会历史：picasso_house_gc_overdueexhibition

 


  // 空页面，显示小黄人图标
    - (UITableViewCell *)dequeueEmptyWithAnnounceCell:(NSString *)emptyMessage hintMessage:(NSString *)hintString emptyType:(NVEmptyType) EmptyTypeShow;

    - (UITableViewCell *)dequeueEmptyWithAnnounceCell:(NSString *)emptyMessage hintMessage:(NSString *)hintString emptyType:(NVBaseEmptyType) EmptyTypeShow




 if(info){
          <PM_MGEInfo>{
                category: "gc",
                bid: "b_p1hz0myv",
                labs: {
                    custom: {
                        title: info.sceneWord,
                        sort: "test"
                    }
                }
            }
        }




dianping://houseaddreview?shopid=12345


scheme: houseaddreview

参数：
shopid

[{\"backgroundcolor\":\"#00FFFFFF\",\"strikethrough\":false,\"text\":\"我是\",\"textcolor\":\"#FF333333\",\"textsize\":15,\"textstyle\":\"Default\",\"underline\":false},{\"backgroundcolor\":\"#FF80b57e\",\"strikethrough\":false,\"text\":\"大众点评\",\"textcolor\":\"#FF333344\",\"textsize\":15,\"textstyle\":\"Default\"},{\"backgroundcolor\":\"#00FFFFFF\",\"strikethrough\":true,\"text\":\"么么哒哒\",\"textcolor\":\"#FFff6633\",\"textsize\":15,\"textstyle\":\"Default\",\"underline\":true},{\"backgroundcolor\":\"#00FFFFFF\",\"strikethrough\":true,\"text\":\"Nice\",\"textcolor\":\"#FFff600\",\"textsize\":18}]

turbos 2.0.133
development

renovation_material
 




+ (UIImage *)gc_baseComponent_imagenamed:(NSString *)imagename {
    NSBundle *bundle = [NSBundle bundleForClass:[GCBaseComponents class]];
    UIImage *image = [UIImage imagenamed:imagename inBundle:bundle compatibleWithTraitCollection:nil];
    if (image == nil) {
        image = [UIImage imagenamed:imagename inBundle:[NSBundle mainBundle] compatibleWithTraitCollection:nil];
    }
    return image;
}




    NSBundle *bundle = [NSBundle bundleForClass:[GCBaseComponents class]];



2.1.8

development


GCBaseComponents

turbos 1.3.39

GCSkuTopKeyWordFilterCell

需要分别发版，不要继承到nova，随后联合集成

发版失败时，如果没有改代码是可以使用相同的tag号的

turbos -p 1.3.39,Fitness:9.7.0.1,GCBusiness:2.1.7

turbos 9.7.0.1

1.3.40
release/8.7

OrderBaseInfo
OrderAmountInfo

15298387106


gccommp


GCBaseComponents,1.3.39;GCBusiness,2.1.10


/feature/IFST-2138-GCBaseComponents



GCComponents




turbos -p 1.3.39,Fitness:9.7.0.1,GCBusiness:2.1.7,weddingproductbase:9.7.0.0,weddingmoduledpmt:9.7.0.0


gcbasecomponse

turbos -p 1.3.39,Fitness:9.7.0.1,GCBusiness:2.1.13

GCWebDetailCssLoader



GCLevelShow.fullImage
GCLevelShow.halfImage
GCLevelShow.emptyImage



















1.筛选列表页

7.团购订单详情页

9.团购申请退款页

10.退款详情页



来到美团点评将近半年的时间，感受到团队的精益求精，受益良多。在后面迭代业务需求较多的时候没有能分配好时间导致做事效率低乱。
下阶段自己要多学习提高自己，并以Picasso为契机扩展自己前端的技能树，希望能够在做好业务需求的同时，多能参与一些通用组件的开发以及工具的开发。






# 推荐使用 [NVM](https://github.com/creationix/nvm) 管理 Node 版本： 

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# 安装 Node 6.9+ 
nvm install v6.9.5  

# 安装 VSCode  [官方下载链接](https://code.visualstudio.com/) 
# 安装完成后，从命令面板[Shift+Command+P] 安装命令行下的 code 命令方便启动 
# 在扩展商店搜索安装 [TSLint] 插件 

# 安装 typescript
npm i -g typescript 

# 配置 npm 源
npm set registry http://r.npm.sankuai.com/
# 安装到综 Picasso 开发工具
npm install -g @dp/picasso-module-cli  
# 安装到综 Picasso Debugger 工具
open http://172.22.210.34/picassodebugger/





pod 'BaseModel', :path => "../../basemodel/BaseModel.podspec"
pod 'GCBaseModule', :path => "../../GCBaseModule/GCBaseModule.podspec"
pod 'BaseModule', :path => "../../basemodule/BaseModule.podspec"

pod 'Picasso', :path => "../../picasso/Picasso.podspec"
pod 'PicassoModule', :path => "../../picassomodule/PicassoModule.podspec"
pod 'GCBaseComponents', :path => "../../GCBaseComponents/GCBaseComponents.podspec"
pod 'PicassoKMMMappingFiles', :path => "../../picassomappingfiles/PicassoKMMMappingFiles.podspec"
pod 'KMMBaseComponents', :path => "../../KMMBaseComponents/KMMBaseComponents.podspec"
pod 'KMMService', :path => "../../KMMService/KMMService.podspec"
pod 'NVLayout', :path => "../../nvlayout/NVLayout.podspec"







        //TEST

        const input = new InputView;
        input.hint = '填写手机号';
        input.hintColor = '#cccccc';
        // input.text = phoneNumber;
        input.tag = "phone"
        input.width = bgView.width;
        input.height = 50
        input.top = billingView.bottom + 15;
        input.left = 0
        input.onTextChange = (newStr) => {
            PCSB_modulePopup.dismiss()
            this.sendEvent('onTextChange', {
                phoneNumber: newStr
            });
        };
        input.borderColor = "#cccccc"
        input.borderWidth = 1
        input.autoAdjust = false
        bgView.addSubView(input);

        log("---input.frame："+JSON.stringify(input.frame))

        bgView.height = input.bottom + 30




    onPaintSuccess() {
        PCSB_moduleEvents.registerKeyboard({
            identifier:"phone.phone",
        })
    }


13641040904




[Caesium] read core configuration: {
}libc++abi.dylib: terminating with uncaught exception of type NSException


客满满Pad经过两个版本的Picasso开发，感觉有些组件可以抽取公用，所以


303     : PicassoGCNaviViewWrapper                 








## 美团，点评项目编译：

美团iOS地址：http://git.sankuai.com/projects/IOS/repos/imeituan/browse

依赖于几个公共组建
	点评：在iphone-nova/Nova添加Podfile.local文件

### 每次更新组件后
	点评：终端在iphone-nova路径下执行 sh pod_install.sh 拉去podfile文件
	美团：imeituan 路径下执行：pod install

	项目的ruby版本依赖到2.2.4，ruby用rvm管理


### 引入Pod本地仓库， 更改一下的文件后，执行上面的语句	
	点评： Podfile.patch 
	点评： Podfile.local


	引入本地代码前记得看本地代码的所在分支要是对的。
	pod 'HomepageModules', :path => "../../homepagemodules/HomepageModules.podspec"







gem install bunlder


# 模拟器模拟器
 	## 打开调试面板 --> mock --> 中间的那个选项
# mparam_poiinfo_bin 下划线中间的是对应的模型


2 - 3章英文书分享



--- 

# Tips

	1. 获取UISCreen的宽高：[UIScreen height];
	2. GCSegmentedTitleView顶部的segment条目




-- GCMerchantViewController

 


NVBaseModulesTableViewController


## 美团编译出错

出现以下错误，直接直接	`pod update`

	
[!] Unable to satisfy the following requirements:

- `SAKPlatformBusinessChannel (from `http://ios-re.sankuai.com/artifacts/podspecs-removed-dependencies/SAKPlatformBusinessChannel/version/8.3.26/SAKPlatformBusinessChannel.podspec.json?hint=all&file=SAKPlatformBusinessChannel.podspec.json`)` required by `Podfile`
- `SAKPlatformBusinessChannel (= 8.3.26)` required by `Podfile.lock`

None of your spec sources contain a spec satisfying the dependencies: `SAKPlatformBusinessChannel (from `http://ios-re.sankuai.com/artifacts/podspecs-removed-dependencies/SAKPlatformBusinessChannel/version/8.3.26/SAKPlatformBusinessChannel.podspec.json?hint=all&file=SAKPlatformBusinessChannel.podspec.json`), SAKPlatformBusinessChannel (= 8.3.26)`.

You have either:
 * out-of-date source repos which you can update with `pod repo update`.
 * mistyped the name or version.
 * not added the source repo that hosts the Podspec to your Podfile.

Note: as of CocoaPods 1.0, `pod repo update` does not happen on `pod install` by default.





https://p1.meituan.net/education/be7ed8408c7a5c7602717580bd5f0d391460654.png%40180w_160h_1e_1c_1l%7Cwatermark%3D0
https://p0.meituan.net/wedding/5f885bc88a2598a5e323a7f485309638428556.jpg%40640w_360h_0e_1l%7Cwatermark%3D0


chrome-extension://laookkfknpbbblfpciffpaejjkokdgca/backgrounds/3068befa-45dd-491c-a506-66b86a5c65f4.jpg


  252  cd GCBusiness
  253  ls
  254  cd GCBusiness
  255  ls
  256  cd Classes
  257  ls
  258  cd NVModels
  259  ls
  260  gem install Babel
  261  babel -p 1 -b 41

拉取模型类


  424  dplint GCBusiness.podspec
  425  dplint
  426  gem install DPPodLint
  427  dplint GCBusiness.podspec
  428  cd ~/.cocoapods/repos
  429  ls
  430  pod repo add sankuai-mobile-dppods http://mci.sankuai.com/mobile/DPPods.git
  431  ls
  432  cd ..
  433  ls
  434  cd Documents/MTDP
  435  ls
  436  cd GCBusiness
  437  dplint GCBusiness.podspec
  438  cd  Documents/MTDP
  439  ls
  440  cd iphone-nova
  441  sh pod_install.sh
  442* fastlane go
  443* bundle install
  444* fastlane go
  445* pwd
  446* vim vim ~/.jenkins_token
  447* ls
  448* vim ~/.jenkins_token
  449* fastlane go
  450* turbos 2.0.19
  451* gem install turbos
  452* turbos --register EfT69XYyXhnFNyfbcxCn
  453* turbos 2.0.19

# 模块下发接口：modulesconfig

# iPhone-nova 分支命名以tg开头
tg_9.4.0_updateGCPods082301

# DP各个库的依赖信息会在这里出现
Podfile.lock

# 拉取 dpservices - 点评端
`/Users/fengtf/Documents/MTDP/dpservices/Pod` 下执行 `babel -p 1 -a 1 -v 9.4.0`

# 拉取model GCbussness
路径：~/Documents/MTDP/GCBusiness/GCBusiness/Classes/NVModels
修正： 路径：~/Documents/MTDP/GCBusiness/GCBusiness/Classes
执行：babel -p 1 -b 41

# 拉取Picasso的ts模型
路径：/Users/fengtf/Documents/MTDP/gcpicasso/Models/GCBusiness
向下：路径：/Users/fengtf/Documents/MTDP/gcpicasso/Models/GCBusiness/Models/HomeExhibitionInfo.d.ts
在 babel -p 3 -b 41
路径：/Users/fengtf/Documents/MTDP/gcpicasso/Models/DPServices
执行： babel -p 3 -a 1 -v 9.6.0

# 添加图片：

路径：/Users/fengtf/Documents/MTDP/GCBusiness
执行：ruby image_ids.rb


# 发版：以GCBusiness举例，目前GCBusiness的版本是：2.0.19：

0. 代码要在master分支上，拉取最新的代码	 `dplint GCBusiness.podspec`
2. fastlane go 发美团侧的打包 	`fastlane go `
 	. 过程会让填写tag号码，手动把tag号码+1，写上去，比如`2.0.20`（当前tag是2.0.19）
 	. 选中Y，要合入到imeituan
3. turbos 2.0.20 发点评侧的打包(tag号不再+1，fastlane会)	`turbos 2.0.20`
-- 重要  美团执行fastlane后，点评再执行turbos 2.0.19 基于原来版本+1 和美团发版保持一致就好
-- 美团发版失败后fastlane后版本tag号要接着+1，turbos可以使用相同的tag号

# 发版：DP 点评端
0. turbos 9.4.0.1  //当前开发的是9.4.0版本 后面的号码+1
// 1. Nova  //1. 9.4.0
随后两个都选择1，

选择要集成App：
1. Nova
2. Merchant
3. WedMerchant
4. 不在集成项目中升级
🍎  请选择需要升级的App名？
1
选择了：Nova
选择要集成项目Nova的版本号：
1. 9.4.0
2. 不在集成项目中升级
🍎  请选择需要合入Nova的release分支名？
1
选择了：9.4.0

-- 如果不进行集成就选择4，最后自己建分支合并

# 发版： MT 美团端
在网站上



# 打点 -- 四种类型

SAKAnalytics : 废弃
SAKStatistics ： 现在用的

## 1. 页面级打点：GCProductDetailShellViewController -> viewDidLoad
Demo: https://config-ocean.sankuai.com/#/page-traffic-config/40018150?channelId=61&_k=cxex16
  
    #import "UIViewController+SAKStatistics.h"
    
    SAKStatisticsPageBusinessValue *value = [[SAKStatisticsPageBusinessValue alloc] init];
    value.customLog = @{
                        @"product_id": [NSString stringWithFormat:@"%@", @(self.productId)],
                        @"city_id": [NSString stringWithFormat:@"%@", [NVMainBoard mainBoard].cityId]
                        };
    value.customLog = @{@"poi_id" : [NSString stringWithFormat:@"%@", @(self.shopId)]};
    [self setSakst_pageValue:value];

## 2. View曝光/View点：view.gcViewMGEInfo
  Demo: https://config-ocean.sankuai.com/#/event-traffic-config/?pageId=40018545&eventId=1773418&channelId=61&_k=su3i9t

  #import "UIResponder+GCReportGA.h"
  #import "NSObject+GCReportGA.h"

  //有去重
  cell.gcViewMGEInfo = GCMGEInfo.category(@"gc").bid(@"b_bmesjzo4").lab(@"poi_id", @(self.shop.shopId)).custom(@"case_id",@(self.productId));

  //需要手动去重
  [self gc_reportMGEInfo:GCMGEInfo.category(@"gc").bid(@"b_8m4cx0ht").custom(@"case_id", @(product.productId)) eventType:SAKStatisticsEventView];

## 3. 模块曝光点/模块_view点
Demo: https://config-ocean.sankuai.com/#/event-traffic-config/?pageId=12040005&eventId=718333&channelId=36&_k=rf9svl
  

  - (GCMGEInfo *)gc_mge_info {
      return GCMGEInfo.category(@"gc").bid(@"b_36U3L").lab(@"poi_id", @(self.shopId));
  }


  self.gc_mge_info = GCMGEInfo.category(@"gc").bid(@"b_i6qdjuk8").lab(@"poi_id", @(self.shopId));


## 4. 点击(tap/click)：view.gcMGEInfo
Demo: b_vt4vc https://config-ocean.sankuai.com/#/event-traffic-config/?pageId=12040005&eventId=718334&channelId=36&_k=h3rkgu

  #import "UIResponder+GCReportGA.h"
  #import "NSObject+GCReportGA.h"

  view/cell.gcMGEInfo = GCMGEInfo.category(@"gc").bid(@"b_F7BSB").lab(@"poi_id", @(self.shopId)).custom(@"product_id",@(product.productId));
  [self gc_reportMGEInfo:GCMGEInfo.category(@"gc").bid(@"b_6J6An").lab(@"poi_id", @(self.shopId)) eventType:SAKStatisticsEventClick];
            

# 代码提交前检查
1： 代码风格，strong，nonomatic
2:  使用RAC的部分是否
    @weakify(self);  @strongify(self)

# Xcode运行崩溃： Reason：image not found

  rm -rf ~/Library/Developer/Xcode/DerivedData ;
  rm -rf ~/Library/Caches/CocoaPods/Pods/* ; 
  rm -rf Pods ; 
  git clean -fdx


sh: hades-db: command not found
GCBusiness lint 检查: Hades 命令执行失败 !!!

homematerialnocooperateheadinfo



FTBReversationModuleV2ViewModel

# "file/file.h" file not found
Update：建子pod里面的文件，需要重新pod install才可以
清理drivedata

# 制底的module继承GCBaseHoverBottomModule

turbos 2.0.24

如果定义NS_DESIGNATED_INITIALIZER，不想让调用者调用父类的初始化函数，只希望通过该类指定的初始化进行初始化，这时候就可以用NS_UNAVAILABLE宏

## MT GCMerchantViewController

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

## DP  NVShopInfoController

  NSMutableArray *arr = [NSMutableArray arrayWithArray:moduleArray];

    [arr insertObject:@[@[@"SchoolAdverModule", @"SchoolAdverModule"]] atIndex:1];
//    [arr insertObject:@[@[@"HOUSERecomModule", @"HOUSERecomModule"]] atIndex:1];
//    [arr insertObject:@[@[@"EDUCmsVideoListModule", @"EDUCmsVideoListModule"]] atIndex:1];
//    [arr insertObject:@[@[@"HOUSEHeaderNoBookingModule", @"HOUSEHeaderNoBookingModule"]] atIndex:1];

    [arr insertObject:@[@[@"HOUSEHotGroupModule", @"HOUSEHotGroupModule"]] atIndex:2];
    [arr insertObject:@[@[@"HOUSEBusinessHourModule",@"HOUSEBusinessHourModule"]] atIndex:3];
    return arr;





 Reveal in Project Navigator ： ⇧ + ⌘ + J 
                             ： ⇧ + ⌘ + O



# gcpicasso运行
1： /Users/fengtf/Documents/MTDP/gcpicasso/dist路径下
运行：picasso .
2：VSCode 终端：
npm run dev
3： VSCode :Shift + command + b


修改没有效果后，先把log注释起来，然后就会有效果了，在打开log就可以打印了

# 在/Users/fengtf/Documents/MTDP/gcpicasso/Models/GCBusiness路径下
执行 ：babel -p 3 -b 41
在路径： /Users/fengtf/Documents/MTDP/gcpicasso/Models/DPServices
执行：babel -p 3 -a 1 -v 9.6.0


DP(9.5)&MT(8.5)客户端 APi:
https://wiki.sankuai.com/pages/viewpage.action?pageId=1055332588


shop(message);
console.log("%s is %d years old.", people, years);
console.log("The name is: " + name);




FFC0CB

shop_renovation_design_booking

picasso_house_gc_exhibition
GCHouseexhibitionModule

//搜索
cat Nova/Podfile.dp | grep GCDy


Picasso ：展会历史 + 往期回顾
Native ： 在线活动，立即预约


PM_ModuleInfo : 可以PM_SectionInfo

//打印模型：
log("asdasd" + JSON.stringify(data));

npm install --save




pablolizexi



⚠️   '@dp/picasso' is imported by lib/House/overdueexhibition/picasso_house_gc_overdueexhibition.js, but could not be resolved – treatng it as an external dependency

## Xcode报错 iOS Undefined symbols for architecture arm64:错误解决

  Undefined symbols for architecture x86_64:
    "_OBJC_CLASS_$_mparam_homeexhibitionaddressandphone_bin", referenced from:
        objc-class-ref in libGCBusiness.a(HOUSEExhibitionAddrPhoneModule.o)
  ld: symbol(s) not found for architecture x86_64
  clang: error: linker command failed with exit code 1 (use -v to see invocation)

clean多次，关闭Xcode后重新运行

http://p4.so.qhimgs1.com/bdr/326__/t015a33b63070acc5fa.jpg
http://p3.so.qhmsg.com/bdr/326__/t014bf35530a314d1e8.jpg
http://p1.so.qhimgs1.com/bdr/326__/t0183893a8b17d29eb1.jpg
http://p1.so.qhmsg.com/bdr/326__/t01116826c9329a2096.jpg
http://p1.so.qhimgs1.com/bdr/326__/t01046d5a17f63e6bfd.jpg

https://p1.meituan.net/wedding/3aaee24cac79528838645788c0e51bec526728.jpg%40280w_210h_1e_1c_1l%7Cwatermark%3D0

https://p1.meituan.net/dpmerchantimage/1856e972-c3da-4a0c-9997-ccc284354918.jpg%40280w_210h_1e_1c_1l%7Cwatermark%3D0
https://p1.meituan.net/wedding/57f78d10127092157dc528c11cdbbbc2575068.jpg%40280w_210h_1e_1c_1l%7Cwatermark%3D0
https://p1.meituan.net/dpmerchantimage/ad471f55-08d8-4641-ba8f-59a529264ee9.jpg%40280w_210h_1e_1c_1l%7Cwatermark%3D0
https://p1.meituan.net/dpmerchantimage/ce6c9711-f90c-476b-9f17-7a92622a2a1f.jpg%40280w_210h_1e_1c_1l%7Cwatermark%3D0

imeituan://www.meituan.com/dealDispatch?convertTrack=023860639058505353811079788084673093922_a1642296_c1_e8293216264860528042_v910338972344892646__172&dealID=44124411&stid=006964724957105058126064159085879103518_f1642296&channel=education&business=poiid%3D1642296



# DP9.5 MT8.6

## 家装： Native
接口: https://wiki.sankuai.com/pages/viewpage.action?pageId=1055332588
1：地址电话    90%
2：在线预订    80%  : 请求两个接口
2.1： 预定底部弹窗
3：施工队长   80%   
# 施工队长的代码现在不能提交 模型迁移


## 家装： Pocaaso
1: 展会信息   80%
2：展会历史   80%

## 教育 Navive
接口：http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4164
1：留学品牌模块       


# GCBaseComponents 动态库改造
本库的图片资源改版
以及引用 R_GCBaseComponents.h 其他库的文件

#import "UIImage+nvBundle.h"
#import "GCBaseModule.h"
#import "R_GCBaseModule.h"

#import "UIImage+nvBundle.h"
#import "GCBaseModule.h"


 _imageViewForEmpty.image = [UIImage imagenamed:@"icon_deal_empty"];
 _imageViewForEmpty.image = [UIImage nvImagenamed:R_gc_icon_deal_empty inBundleOfClass:[GCBaseModule class]];

# GCBaseComponents 动态库改造应用

#import "R_GCBaseComponents.h"

#import "UIImage+nvBundle.h"
#import "GCBaseComponents.h"

[UIImage nvImagenamed:R_gc_icon_deal_empty inBundleOfClass:[GCBaseComponents class]];

NSBundle *bundle = [NSBundle bundleForClass:[GCBaseComponents class]];
UIImage *imga2 = [UIImage imagenamed:R_gc_bottomtool_icon_phone inBundle:bundle compatibleWithTraitCollection:nil];


# 由于提供的是NSString的形式，那么需要
1 GCBottomToolBar+Utils: 对外提供的是NSString形式的图片名，外边也有人用了(GCBusiness)  -> 没有改
2 GCShopStar 继承 GCLevelShow：对外提供的是NSString形式的图片名，但是没人直接使用       -> 改了



GCArrowButton

dianping://picassomodulesplayground

 bizTag:"withexhibition"

NVModelBaseHomeDesignCaptainWrap


fengtengfei@meituan.com


/Users/fengtf/Documents/MTDP/gcpicasso/dist/House/overdueexhibition/picasso_house_gc_overdueexhibition.js
/Users/fengtf/Documents/MTDP/gcpicasso/dist/House/exhibitionshopinfo/picasso_house_gc_exhibitionshopinfo.js


# 美团点评发版都是交进入一个pod仓库里，
# 美团联合

turbos -p 2.0.119,DPServices:9.5.0.76




装修队长：self.width

设置箭头放上边，代码更好



dp_take



layoutself

layoutsubview


whiteboard：加前缀



max()



HousePromotionPopView



//DP: GCNewAddressPhoneModule



edu_brand                   : EDUShopBrandModule

# TODO 美团 没有删除教育的老模块







    // 空页面，显示小黄人图标
    - (UITableViewCell *)dequeueEmptyWithAnnounceCell:(NSString *)emptyMessage hintMessage:(NSString *)hintString emptyType:(NVEmptyType) EmptyTypeShow;

    - (UITableViewCell *)dequeueEmptyWithAnnounceCell:(NSString *)emptyMessage hintMessage:(NSString *)hintString emptyType:(NVBaseEmptyType) EmptyTypeShow




 

# TODO 家装去依赖后发版 ok
# TODO 教育核对打点信息
# TODO 代码优化


RACTuplePack(self.banners[viewIndex], @(viewIndex))

GCBaseSectionItemsModule



 

//picasso模块最下的横线
separatorLineStyle: PM_SeparatorLineStyle.None


HOUSEAddReviewComplainModule

 
G557


G401

G517

G69
G519
G505
G573
G525



    containerView.shadowOffset = {width: 0, height: 120};
    containerView.shadowColor = "#FF6633";
    containerView.shadowRadius = 2.0;
    containerView.shadowOpacity = 0.8;





http://mapi.dianping.com/mapi/joy/event/index.bin




https://p0.meituan.net/dprainbow/92dd115e2e1508de26fe232e085e8c941929.png





EduUGCCommonSelectCellSelectDelegate
EduUGCCommonSimpleCellSelectDelegate





一万个理由》彩铃下载量约一亿两千万余次，至今保持总记录，创造了华语乐坛无人能及的“彩铃神话”，因此享有"彩铃天王”的美誉。相继发行了《为什么相爱的人不能在一起》、《不要在我寂寞的时候说爱我》、《难道爱一个人有错吗》、《爱情里没有谁对谁错》、《包容》、《爱情码头》、《寒江雪》、《爱情路》等作品。2007年郑源揽下首届中国移动无线音乐内地“最畅销男歌手奖”“最畅销专辑奖”以及“最畅销金曲奖”，《一万个理由》获2006TOM网络·娱乐·英雄会 年度最受欢迎彩铃歌曲奖.




# DP9.6
# 家装
## 1: 设计师模块 - 增加设计师title         - Native  100%接口没有给
## 2：用户评论页 - 增加投诉功能入口 - 已签约 - Native  100%接口没有给
            ## 3：用户评论页 - 增加投诉功能入口 - 未签约 - Native  0%接口没有给  delay
# 教育
## 4：体验课入口列表                      - Native  100%接口没有给
## 5：时趣UGC评价 - 默认选中几个选项       - Native   %%    接口已经给了
  5.1 默认选中 - 服务器数据控制           - 0%
  5.2 选择课程单选，新增加的课程默认为选中  - 100%
  5.3 提交信息：课程id+string            - 0%    转化为JSON的格式
## 去掉认证                             - Native   100%    EDUHeadBaseInfoCell  135
# 休娱
## 6：猜你喜欢                           - Picasso  100%


难点：
1： 课程选择页面id值          ---> OK 
2： 已经选择界面模型的值得设置  ---> OK
3:  提交时上传的json拼接      ---> OK




# 新加  
## 1. 家装卖场打点 https://wiki.sankuai.com/pages/viewpage.action?pageId=1121486543 -- OK 100%
## 2. 美团详情页家装加点  0%
## 3. 教育问题处理       100%



NVModelBaseReviewEduSection
NVModelBaseReviewCourse
 


废弃的字段的使用


# 8.7


//教育UGC用到的模型ReviewEduSection
http://m.dper.com/newmodel/detailModel.html?type=detail&modelId=5737
//教育：评论页UGC对接
https://wiki.sankuai.com/pages/viewpage.action?pageId=1129802784
//教育： 获取评论页面数据:reviewconfig
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=2754
//教育：提交评论信息submitreview
http://m.dper.com/newapi/detailbyname.html?apiname=submitreview.bin





            "ReviewCourseList": [
                {
                    "__name": "ReviewCourse",
                    "name": "艺术体验课",
                    "CourseID": 11,
                    "selected#I": 0,
                    "CourseType": 0
                },
                            {
                    "__name": "ReviewCourse",
                    "name": "物理体验课",
                    "CourseID": 22,
                    "selected#I": 1,
                    "CourseType": 0
                },
                            {
                    "__name": "ReviewCourse",
                    "name": "计算机体验课",
                    "CourseID": 33,
                    "selected#I": 0,
                    "CourseType": 0
                }
            ],


## 分割





            {
              "type" : 1,
              "selectedReviewCourse" : {
                "selected" : false,
                "courseID" : 0,
                "courseType" : 0
              },
              "isEdit" : 0
            }







DPScope[78452:448896] --result-: {
  "selectedCourse" : "AAAAAAA",
  "courseType" : "体验体验",
  "type" : 1,
  "isEdit" : 0
}

2017-10-16 12:52:55.025087+0800 DPScope[78452:448896] -self.userDat-: {
  "type" : 1,
  "selectedReviewCourse" : {
    "courseType" : 0,
    "selected" : true,
    "name" : "rrrrrrr",
    "courseID" : 0
  },
  "isEdit" : 0
}






fastlane go


release/8.6.1
turbos 2.0.169


新增ReviewCourseList字段取代原先courseList字段，并弃用原selectedCourses、selectedCourse、CourseType字段

courseList     --  无用 已改 OK
selectedCourse -- 无用 已改 --OK
selectedCourses -- 设置默认选中的课程 还没有 ---
CourseType      -- 设置类别 --


.courseType


UGCAddReviewViewController  165跳转

体验课订单列表页App跳转schema：dianping://addreview?referid=${courseId}&refertype=19

正式课：shopid=1880329, courseid= 762302, refertype=18;
体验课：shopid=1880329, courseid= 771063, refertype=19;




dianping://addreview?referid=1880329&refertype=18
dianping://addreview?referid=771063&refertype=19


3db632bdd39d2f0edfc23d54e8477a89b940d7cd


npm install -g @dp/picasso-module-cli




# 总结
教育UGC页面数据结构：

请求评论信息接口：reviewconfig.bin
http://m.dper.com/newapi/detailApi.html;jsessionid=0F37CDE738709A882D8B41A56F544EB4?type=detail&apiId=2754

提交接口：submitreview
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=2368

ReviewEduSection
http://m.dper.com/newmodel/detailModel.html?type=detail&modelId=5737


点评团购比较便宜
https://m.dianping.com/tuan/deal/19656345?utm_source=appshare

家装
# 增加投诉功能入口(已签约)    --- OK
# 增加设计师title           --- OK
# 家装卖场打点              ---  OK

教育
# 时趣商户页入口模块          --- OK
#  UGC点评页                --- OK
#  认证标签跟商户通版本       --- OK

休娱
# 猜你喜欢                 --- OK




turbos 9.6.0.5



# MT8.7
## 到综平台
### 1. 订单详情页展示用户交易金额明细
### 2. 退款页新增门店选择操作
## 教育
### 3. 认证标签跟商户通版本     -- OK
## 家装
### 4.打点


# 功能点
1： 全部改成单选，并且不能反选  MT-? DP-OK 
2： iPhone X底部的适配
3： 


# DP9.7
## 到综平台
### 1. 订单详情页展示用户交易金额明细
### 2. 退款页新增门店选择操作
## 教育
### 3. 教育地址栏自定义
### 4. 教育UGC选择课程和老师修改
## 家装
### 5.打点

### 6: 家装 已签约投诉页面打点：
https://www.tapd.cn/20021821/prong/stories/view/1120021821001278314?url_cache_key=737e6375097db141c6416007ee9502df&action_entry_type=story_tree_list


上：orderbaseinfo
下：orderAmountinfo
 




R_GCBaseComponents
@interface NVModelBasePair : NVBaseModel
/** Id*/
@property (nonatomic, copy) NSString * uid;
@property (nonatomic, copy) NSString * name;
@property (nonatomic, assign) NSInteger type;
@end





#  文件 GCMerchantStoreListViewController

    [[[[NSNotificationCenter defaultCenter] rac_addObserverForname:UGCUserContentUploadFinishedNotification object:nil]takeUntil:[self rac_willDeallocSignal]] subscribeNext:^(id x) {
        @strongify(self);
        [self queryOrderData];
    }];


 GCRefundStoreListViewController : GCNetworkListViewController

    NSString *urlString = [NSString stringWithFormat: @"imeituan://www.meituan.com/gcmerchantstorelist?poiid=%@&ct_poi=%@&stid=%@", @(self.dpMerchant.poiID), self.dpMerchant.convertTrack, self.dpMerchant.stid];
    NSURL *url = [NSURL URLWithString: urlString];
    [SAKPortal transferFromViewController: self.parentViewController toURL: url completion: nil];

imeituan://www.meituan.com/gcmerchantstorelist?poiid=4853256&ct_poi=276316392329667611198466844427114652697_a4853256_c2_e3874812389312757807&stid=(null)

    [self.mappingDelegate.viewController.navigationController pushViewController:photoListViewController animated:YES];





mtservice： 470b39e29ba8192f045708a5a09a5d0d93fce04a


bundle install


# 家装底部栏




# R_GCBaseComponents


1 GCBottomToolBar+Utils: 对外提供的是NSString形式的图片名，外边也有人用了(GCBusiness & Fitness)  -> 没有改 BabyBottomToolBarModuleViewModel & FitnessShopInfoBottomToolViewModel & GCBottomToolBarIconInfo+JoyToolBar
2 GCShopStar 继承 GCLevelShow：对外提供的是NSString形式的图片名，但是没人直接使用       -> 改了



GCPromotioncountDownCell ： 没有用到



open vnc://GCMacPro:12345678@172.24.52.31


/Users/gcmacpro/Documents/iphone-nova









git show head^^^^^^




订单“ UGCWaitReviewListController






GCFlipperPicsCell 没有


sh sd.sh source



GCLevelShow 有



DP : 源码
sh pod_install.sh source








# DP涉及业务
basebaby -- 稍后发
shopping -- 稍后发
gcbussness
TuanComponents --
fitness


# MT涉及业务
gcbussness
joychannel




GCShopStar 继承 GCLevelShow
GCBottomToolBar+Utils / GCBottomToolBar   || GCBottomToolBarIconInfo || GCBottomToolBarButtonInfo

GCFlipperPicsInfo / GCFlipperPicsCell

GCPromotioncountDownCell  引用了但是没有用图片


SPICUGCPromoListEmptyCell 还用了shopping的图片





feature/dev_ftf



-- GCWebDetailCssLoader 资源文件






# GCComponents 动态库
// -- imagename -> Image

GCRecommendDealInfo

GCMerchantInfoCell : imagenameForExtraIcon   ： 无
GCMerchantInfoModuleViewModel : 没有人用

GCPaymentResultHeaderInfoCell               ： 无
GCPaymentResultHeaderInfoModuleViewModel ： 有人用

GCPaymentResultOrderInfoModuleViewModel ： uiimage
qrImage

GCServiceTagsModuleTagInfo -> GCServiceTagButton    : 结婚有用


NSString * R_bg_merchant_recommend_category_btn = @"";        --
NSString * R_bg_merchant_recommend_category_btn_highlighted = @"";    --
NSString * R_gc_components_Rectangle = @"";
NSString * R_gc_consult_icon = @"";
NSString * R_gc_deal_detail_pagecontrol_background = @"";
NSString * R_gc_shoptuan_gou = @"";
NSString * R_ic_deal_noBooking = @"";     --
NSString * R_icon_deal_mark_quan = @"";     --
NSString * R_icon_save_photo_to_device_album = @"";   --
NSString * R_icon_shopping_mall_arrow_down = @"";   --




#  用了SAKPlatform的图片
GCAddressPhoneCell  : icon_merchant_location icon_deal_phone
GCGrouponCell : icon_deal_lightning.png
GCHeaderPicCell : merchant_detail_top_cover  merchant_head_backround  merchant_head_default
GCMerchantInfoCell : icon_deals_distance  icon_deal_phone
GCMerchantInfoConsultCell : icon_deal_phone
GCMerchantSettleEntranceCell : merchant_head_default
GCMerchantSettleEntranceCell : merchantSettle arrow_down arrow_up
GCPaymentResultOrderInfoBarcodeCell : bg_voucher_list
GCPaymentResultOrderInfoCouponCell : bg_voucher_list
GCPaymentResultOrderInfoFooterCell : bg_voucher_list_footer
GCPaymentResultOrderInfoHeaderCell : bg_voucher_list_header icon_payment_arrow
GCPaymentResultOrderInfoPromoCell : bg_voucher_list
GCPaymentResultOrderInfoQRCodeCell : bg_voucher_list  bg_myCoupon_barcode
GCPaymentResultOrderInfoUnfoldCell : bg_voucher_list
GCPaymentResultRecommendDealsHeaderCell : icon_recommend_sectionSeperator_line
GCPaymentResultRecommendDealView
GCRecommendDealUnfoldCell
GCTotalReviewsInfoCell
GCSelectModuleCell
GCSimpleGrouponCellStyleTwo
GCAlbumBottomBarView
GCPromotionLabel


#import "UIImage+nvBundle.h"
#import "GCComponents.h"
[UIImage nvImagenamed:R_gc_arrow_up_grey inBundleOfClass:[GCComponents class]] ;




# GCComponents  涉及到的库 单端 美团
1. GeneralCategories
2. easylifechannel








podfile w美团别人写依赖的时候，会锁住版本，但是点评强行用最新的





pv : pageview 



GCMGEInfo.category(@"gc").bid(@"b_F7BSB").lab(@"poi_id", @(self.shopId)).custom(@"product_id",@(product.productId));

GCMGEInfo.category(@"gc").bid(@"b_qKWIo").custom(@"tab_id", @(navi.uid)).custom(@"tab_name", navi.name)


[self gc_reportMGEInfo:GCMGEInfo.category(@"gc").bid(@"b_e4W8O").lab(@"category_id", @(selectNode.uid)).custom(@"category_name", selectNode.name) eventType:SAKStatisticsEventClick];



1.筛选列表页

7.团购订单详情页  

9.团购申请退款页

10.退款详情页



 


poi_house_banner

[21:22:32]: ▸ Sandbox zip: http://mss.vip.sankuai.com/v1/mss_01eecd01936241e6a4168bd70352694f/SAKPodSharper-Sandbox/GeneralCategories/GeneralCategories-8.7.17@20171103212204.zip
创建二进制: 失败



popoverAction


15298387106



 

GCStatistics






@interface NVModelBaseBabyBtnInfo : NVBaseModel
/** 按钮文本*/
@property (nonatomic, copy) NSString * buttonText;
/** 1-咨询套餐 2-预约档期*/
@property (nonatomic, assign) NSInteger type;
/** 预约档期信息*/
@property (nonatomic, strong) NVModelBaseBabyConsultInfo * babyConsultInfo;
/** 预约礼相关信息*/
@property (nonatomic, strong) NVModelBaseBabyPromoInfo * babyPromoInfo;
@end


@interface NVModelBaseBabyLeftButtonInfoCommon : NVBaseModel
/** 文本描述*/
@property (nonatomic, copy) NSString * buttonText;
/** 在线咨询链接*/
@property (nonatomic, copy) NSString * buttonLink;
/** 类型 1电话 2在线咨询 3写点评*/
@property (nonatomic, assign) NSInteger type;
/** 商户电话*/
@property (nonatomic, strong) NSArray <NSString *> * shopNos;
@end






dianping://web?url=https://g.dianping.com/app/app-home-design-peon/cp/cp1710complain/index.html?shopId=67562294



 
否显示、显示图标(base64)、显示文案




功能：业务前端通过业务桥来配置native分享面板的分享选项(也就是分享面板的第一个选项)。分享选项的配置包括是否显示、显示图标(base64)、显示文案、跳转链接。字段名称：iOS和Android两侧统一即可，前端没有特殊要求。


咨询地址：

dianping://web?url=https%3A%2F%2Fh5.51ping.com%2Fapp%2Fbabyfe-app-baby-im%2Findex.html%3FshopId%3Ds17706951%26clientType%3D100502



jsapi_



git config --global user.name "fengtengfei"
git config --global user.email "fengtengfei@meituan.com"




  

  # s.private_header_files = [
  #   "Pod/Classes/**/*.{h,m}"
  # ]

  # s.public_header_files = [
  #     "Pod/Classes/Education/Module/EDUShare/EDUShareTitansnamespace.h"
  # ]




家装底部栏
退款页
订单页
家装跳转案例详情h5

 

15298387106




#import "R_GCBaseComponents.h"
#import "UIImage+nvBundle.h"
#import "GCBaseComponents.h"

[UIImage nvImagenamed:R_gc_navi_arrow_down_dp inBundleOfClass:[GCBaseComponents class]];


# 发布
1： gcbasecomponents

# 联合发版
turbos -p 2.0.119,DPServices:9.5.0.76


GCBaseComponents,1.3.54;GCComponents,2.3.20

2: gccompon

2.1.38

development

1.3.53


turbos -p 1.3.54

GCBaseComponents,1.3.55

 2.1.39


# TODO 1.教育底部栏  2. GCComponents动态库

系统库分类的self指的还是系统库，相应的获取也就是mainbundle

1.3.56
2.1.40



turbos -p 2.1.50



使用 imeituan 测试本地动态库方法
1. 修改binary_pod.rb, 在大数组里加入你们的库, 保证所有依赖库在大数组里
2. 删除Pods文件夹和Podfile.lock文件
3. SAK_DYLD_ENABLE=true pod install --repo-update --verbose
4. 正常编译测试
5.使用`nm 二进制 | grep 符号`检查,仓库里的符号已经不存在于imeituan二进制中,并且存在于METDyldCollection二进制中
备注:
1. 如果Podfile中使用 :branch => 'xxx' 方式引入仓库, 请确保仓库中podspec已经去依赖,即删除dependency
2. 确保Podfile中使用binary_pod形式引入仓库,否则无法进入动态库
3. 务必使用 1.1.1 版本 Cocoapods, 任何高版本都可能导致失败 





 15298387106

development


 y


forMessageSelector(@selector(btnBookingClicked



+ (void)GET:(NSString *)url parms:(NSDictionary *)parms fininsh:(void (^)(id request, NSError *error))fininsh;





Modules 主要负责最基础的功能，包括通过 runtime 获取Class的property，encode 和 decode 功能。
Adapters 主要负责JSON <-> Model转换的核心逻辑。
ValueTransform 主要负责某个Property需要进行自定义转换的需求。例如服务端返回的时间戳 -> Model中声明的NSDate类型这种转换。
libextobjc 将property_attribute这种Type Encodings过得东西转化为对应的Model。后面会细讲。
 


# 打点核验
头图，
无忧装点击



1.3.64

 {
           "refer_req_id":"8B69063E-AB75-4772-8AFA-5B9E742C25F1",
           "val_cid":"shopinfo",
           "lng":"121.416098",
           "nt":1,
           "index":0,
           "val_lab":{
               "order_id":"18957062"
               custom":{
                    "action_index":"1"
                },
                "poi_id":"67562294"
           },
           "req_id":"BC43E0A5-0A40-48EB-A2FB-949DFF5C9C0B",
           "val_ref":"shoplist",
           "isauto":0,
           "tm":1511236475866,
           "val_bid":"b_V3nJV",
           "seq":5095,
           "lat":"31.218006",
           "nm":"order"
       }











    [NVDynamicRouter registerKey:@"orderdetail_reduceflydeal" forModuleClass:[TGReduceFlyDealButtonModule class] viewModelClass:[self class]];





{
        "__name": "OrderReviewData",
        "Text": "立即写点评，提升点评家排行",
        "ButtonText": "评一下",
        "Url": "dianping://addreview?orderid=1747204007&referid=1747204007&refertype=1",
        "Type#I": 1,
        "TextJL": "[{\"backgroundcolor\":\"#00FFFFFF\",\"strikethrough\":false,\"text\":\"立即写点评，提升点评家排行\",\"textcolor\":\"#FF999999\",\"textsize\":15,\"textstyle\":\"Default\",\"underline\":false}]",
        "Orderid": 1747204007
    }



百度助手，360，应用宝，vivo oppo pp助手  小米 华为 安智看下能上不








history | grep 'babel'


turbos -p 9.7.0.237,Education:9.7.0.9


turbos -p 2.0.119,DPServices:9.5.0.76





#  NVFoundation迁移

#import "NSArray+functional.h"
#import "NVAdditions.h"

 
GCMGEInfo.category(@"gc").bid(@"b_qKWIo").custom(@"tab_id", @(navi.uid)).custom(@"tab_name", navi.name)


self.gc_mge_info = GCMGEInfo.category(@"gc").bid(@"b_nji6zqh9");




动态的，


 [self.whiteBoard setValue:self.constructData forKey:@keypath(self,constructData)];
[self needReloadTableView];




babel -p 1 -a 1 -v 9.8.0 ： dpservice的更新用这个，上面的3的是更新Picasso的ts模型




# Nova无用图片资源删除
Fitness_dianzhang@2x.png  Fitness iphone-nova/Nova/Pods/Fitness/Pod/Assets/Images/Fitness_dianzhang@2x.png






# 教育UGC
选择课程：单选 一行一个
选择老师：多选 一行三个
选择教练：
考证类型：单选 一行三个



新的：dianping://tuanbookshoplist
原来的：dianping://shopidlist?" + "shopid="+ dpShop.getInt("ID") + "&dealid=" + dealId + "&istuan=1



http://mapi.meituan.com/general/dztg/getshopmodellist.bin
http://mapi.dianping.com/general/platform/dztg/getshopmodellist.bin
http://mapi.dianping.com/general/platform/dztg/getshopmodellist.bin




15298387106



b_hk32ug0e



source "https://rubygems.org"



美团：
imeituan://www.meituan.com/gc/poi/detail   参数：id|商户id,showtype|频道

点评：dianping://shopinfo  参数shopid




1：选择教练：跳转到二级页面，选择
1：考证类型：跳转到二级页面，选择
1：选择老师：跳转到二级页面，选择
2：学习用时：当前选择



商详页：新增点评 ， 加载草稿都是：add 新增点评
新增点评 -》 草稿 


我的页面进去：编辑点评 ：Edit，此时忽略草稿




1：编辑点评的时候不取草稿。只有新增点评的时候才用到

2：草稿会进行覆盖

3：

编辑点评是不是只有已经发表过才可以？


偏向于框架那些写的比较出彩，api设计哪里比较好







dianping://coachbookingsubmitorder?shopid=417444&spuid=770451




MTBaseViewController



#import "GCBaseModule+TableViewEvents.h"
[self deselectRowAtIndexPath:indexPath animated:NO];



updateDraft


    NSLog(@"-草稿-: %@", self.userData);


//补充点
cache
bodrderwi


//        self.resultListData = [NVBaseResultList new];
//        self.resultListData.list = [self.newteachers mutableCopy];
//        [self.resultListData.list addObjectsFromArray:self.newteachers];
//        self.baseListModule.resultListData = self.resultListData;

#import "NSArray+functional.h"
#import "NSArray+CIPFoundation.h"



 GCTuanBookListViewController GCMerchantStoreListViewController





2. 

 

问题：
1：选择课程，直接清空课程会导致问题       -- 
2：添加的老师，课程，再次选择的时候，不对  -- Done

courseType
selectedReviewCourse
courseType
selectedCourses

 {\\n  \\\"courseType\\\" : \\\"体验课\\\",\\n  \\\"selectedReviewCourse\\\" : {\\n    \\\"courseType\\\" : 1,\\n    \\\"courseHeadPic\\\" : \\\"https:\\\\\\/\\\\\\/p1.meituan.net\\\\\\/ktv\\\\\\/67236cc9ed591a3683a23de0113e7545105798.jpg\\\",\\n    \\\"selected\\\" : true,\\n    \\\"name\\\" : \\\"最终测试\\\",\\n    \\\"courseID\\\" : 770421\\n  },\\n  \\\"type\\\" : 1,\\n  \\\"selectedCourses\\\" : [\\n    \\\"最终测试\\\"\\n  ],\\n  \\\"isEdit\\\" : 0\\n}\"\n}"
}







item模型，优化一下：


UIbutton 用custom


nonnull
nullable



dianping://picassomodulesplayground




dianping://web?url=https%3A%2F%2Fm.dianping.com%2Fmtdp%2Fhome%3Futm_source%3Ddp_quanbufenlei%26token%3D%26cityid%3D1%26dpid%3D7401398161341597200%26product%3Ddpapp%26notitlebar%3D1

dianping://web?url=https%3A%2F%2Fm.dianping.com%2Fmtdp%2Fhome%3Futm_source%3Ddp_shouyeicon%26token%3D%26cityid%3D1%26dpid%3D7401398161341597200%26product%3Ddpapp











http://mapi.dianping.com/tuan/bestshopgn.bin?shopid=0&dealgroupid=27295733&token=fad3c0df86b8c20d7c1788eb7adfc0618ce9764b65c9f9a964be157f8b48380d&pagetype=3&lng=121.416134&lat=31.218204&cityid=4432

https://mapi.dianping.com/tuan/bestshopgn.bin?__skcy=x%2FLeVkvVUzaZlwiTonEIDA4Udfg%3D&__skno=298FE700-5C66-456F-A45A-3D580FD99BB2&dealgroupid=27295733&lng=121.4161187777463&__skua=4c078c207ebb4fc06fd50dbd460ec34a&__skck=3c0cf64e4b039997339ed8fec4cddf05&cityid=4432&shopid=22873990&token=fad3c0df86b8c20d7c1788eb7adfc06112b5270f950b3889c66efbc291a711dc&__skvs=1.1&pagetype=1&__skts=1513779169.690451&lat=31.21807479627762

 



1. 默认商户列表schema
ios: imeituan://www.meituan.com/gcmerchantstorelist?dealid=%s
android: imeituan://www.meituan.com/gc/branchlist?dealid=%s


CoreText
TextKit



UGCUserContentHelper


"imeituan://www.meituan.com/gc/branchlist?dealid=101224191"




15=1 --verbose --quick --use-libraries --allow-warnings --sources=ssh://git@git.sankuai.com/ios/specs.git
pod spec lint --sources=ssh://git@git.sankuai.com/ios/specs.git

pod spec lint --no-clean --sources=ssh://git@git.sankuai.com/ios/specs.git
pod spec lint --verbose --quick --use-libraries  --sources=ssh://git@git.sankuai.com/ios/specs.git


gcmerchantstorelist





UGCInterface
UGCSubmitForMT






signature, expireTimeStamp，validInterval



选择视频：

DP:UGCVideoRecordViewController
美团：SPUPhotoListViewController



tuanbookshoplist?dealid=1781287496






来到美团点评将近半年的时间，感受到团队的精益求精，受益良多。在后面迭代业务需求较多的时候没有能分配好时间导致做事效率低乱。
下阶段自己要多学习提高自己，并以Picasso为契机扩展自己前端的技能树，希望能够在做好业务需求的同时，多能参与一些通用组件的开发以及工具的开发。





获取内容图文编辑器的初始数据
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4664
提交图文编辑器内容
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4665
取得内容图片上传参数
http://m.dper.com/newapi/detailApi.html?type=detail&apiId=4668



http://home.mobile.sankuai.com/api/4664/detail.html
http://home.mobile.sankuai.com/api/4665/detail.html
http://home.mobile.sankuai.com/api/4668/detail.html

 



 

 [
{"content":"带你领略文艺女青年的18般武艺","type":"1"},{"content":"https://p1.meituan.net/ktv/cd932750b6fc31c69ec742616fa77088152042.png%40800w_800h_0e_1l%7Cwatermark%3D0","type":"2"},
{"content":"标题标题标题标题标题标题标题标题标题标题标题标题","type":"1"}
]



HOUSEShopInfoTabModuleViewModel

//        self.contentDo.richText = @"[{\"content\":\"带你领略文艺女青年的18般武艺\",\"type\":\"1\"},{\"content\":\"https://p1.meituan.net/ktv/cd932750b6fc31c69ec742616fa77088152042.png%40800w_800h_0e_1l%7Cwatermark%3D0\",\"type\":\"2\"},{\"content\":\"标题标题标题标题标题标题标题标题标题标题标题标题\",\"type\":\"1\"}]";
//
//        NSData *cityData = [self.contentDo.richText dataUsingEncoding:NSUTF8StringEncoding];
//        NSMutableArray *cityArray = [[NSMutableArray alloc] init];
//        cityArray = [NSJSONSerialization JSONObjectWithData: cityData options:NSJSONReadingMutableContainers error:nil];
//        NSLog(@"-%@, %@", cityData, cityArray);






- (NSString *)jsonWithArray:(NSArray<GCRichTextInfo *> *)array {
    NSMutableString *jsonString = [NSMutableString string];
    [jsonString appendString:@"["];
    [array cipf_each:^(GCRichTextInfo *obj, NSUInteger index) {
        NSString *text = [NSString stringWithFormat:@"{\"conent\":\"%@\",\"type\":\"%@\"},",obj.infoText, @(obj.infoType)];
        [jsonString appendString:text];
    }];
    [jsonString appendString:@"]"];
    return jsonString;
}



    
//    NSLog(@"-textContainerInset: %@", NSStringFromUIEdgeInsets(self.textView.textContainerInset));
//    NSLog(@"-frame: %@", NSStringFromCGRect(self.textView.frame));
//    NSLog(@"-titleView,frame: %@", NSStringFromCGRect(self.titleView.frame));
 


    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];



- (void)keyboardWillShow:(NSNotification *)notification {
    CGFloat keyboardHeight = [[[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
    //    NSTimeInterval animitionTime = [[[notification userInfo] objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    self.keyboardHeight = keyboardHeight;
    //    self.textView.height = self.view.height - self.lineForSepart.bottom - self.keyboardHeight;
}




- (void(^)(GCUploadSignatureInfo *signature))getSignature2{
    mparam_getcontentimageuploader_bin *param = [mparam_getcontentimageuploader_bin new];
    [[[NVNetworkClient client] mapi_getcontentimageuploader_bin_withParameters:param] subscribeNext:^(NVModelBaseEditorImageUploaderDo *modelResult) {
        if (modelResult.signature.length) {
            self.signatureInfo = [GCUploadSignatureInfo new];
            self.signatureInfo.signature = modelResult.signature;
            self.signatureInfo.expireTimeStamp = modelResult.expireTimeStamp;
            self.signatureInfo.bucket = modelResult.bucket;
            self.signatureInfo.validInterval = modelResult.validInterval;
            self.signatureInfo.businessIdentifier = @"com.native.edu";//业务标识
            self.validInterval = [[NSDate date] timeIntervalSince1970];
//            getSignature(self.signatureInfo);
        } else {
//            getSignature(nil);
        }
    }];
    return ^(GCUploadSignatureInfo *signature){
        
    };
}






GCRichTextInfo





1.3.107


development




2.1.136


dianping://tuandeal?id=200039638





15298387106

5. 直接调用layoutIfNeeded / setLayoutSubviews





9.9.0.7,DPServices:9.9.0.101



    if ([NVMainBoard mainBoard].isLogin.boolValue) {
        
    } else {
        [self.gcStyle performAfterLogin:^{
            NSLog(@"--2-");
        } cancelAction:nil inViewController:self];
    }






1. 申请退款页  客服优化
https://www.tapd.cn/20004971/prong/stories/view/1120004971001324904?url_cache_key=3aad9bdca2dedd4341d56d3c0659b54c&action_entry_type=stories

2. 申请退款页  退款理由增加门店选择
https://www.tapd.cn/20004971/prong/stories/view/1120004971001324888?url_cache_key=3aad9bdca2dedd4341d56d3c0659b54c&action_entry_type=stories

3. 申请退款页 退款金额 





//团购页面
dianping://tuandeal?id=200039638




//    [self.gcStyle pickAndUploadPhotos:^GCUploadSignatureInfo *{
//        return [self getSignature];
//    } progresCallBack:^(NSUInteger currentUploadIndex, NSUInteger totalcount, double uploadProgress) {
//        NSLog(@"--:%@,-:%@",@(currentUploadIndex),@(totalcount));
//        [self showMaskView:[NSString stringWithFormat:@"正在上传%@/%@张图片", @(currentUploadIndex + 1), @(totalcount)]];
//    } didFinishCallBack:^(NSUInteger failcount, NSArray<GCPhotoInfo *> *photos) {
//        NSLog(@"--:%@,-:%@",@(failcount),photos);
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.photosHadPick = photos.count - failcount;
//            [[GCRichUploadMaskView sharedInstance] dismiss];
//            [photos cipf_each:^(GCPhotoInfo *obj, NSUInteger index) {
//                [self showImageWithPickImage:obj];
//            }];
//        });
//    } maxselectedNum:photosCanPic inViewController:self];





//typedef BOOL(^UGCUploadProgressCallBack)(NSUInteger currentUploadIndex, id<UGCUploadResult> context, NSUInteger totalcount, double iCloudFetchProgress, double uploadProgress, UGCUploadPhotoState uploadState);
//typedef BOOL(^UGCUploadFinishCallBack)(NSUInteger failcount, NSUInteger totalcount, NSArray<id<UGCUploadR esult>> *uploadContext);
- (void)pickAndUploadPhotos:(GCUploadSignatureInfo *(^)(void))signature progresCallBack:(void(^)(NSUInteger currentUploadIndex, NSUInteger totalcount, double uploadProgress))progresCallBack didFinishCallBack:(void(^)(NSUInteger failcount, NSArray<GCPhotoInfo *> *photos))didFinishCallBack maxselectedNum:(NSUInteger)maxselectedNum inViewController:(UIViewController *)viewController;

    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(saveDraft) name:UIApplicationDidEnterBackgroundNotification object:nil];
    

//        dispatch_async(dispatch_get_main_queue(), ^{
            self.photosHadPick = photos.count - failcount;
            [[GCRichUploadMaskView sharedInstance] dismiss];
            [photos cipf_each:^(GCPhotoInfo *obj, NSUInteger index) {
                [self showImageWithPickImage:obj];
            }];
//        });

冲顶大会、百万英雄、芝士超人、百万赢家、一直播黄金十秒，花椒百万作战


    
    [UIView animateWithDuration:animitionTime animations:^{
        NSLog(@"-1-toolBar.frame: %@", NSStringFromCGRect(self.toolBar.frame));
        //        self.toolBar.top = (self.view.height - keyboardHeight - self.toolBar.height);
        NSLog(@"-2-toolBar.frame: %@", NSStringFromCGRect(self.toolBar.frame));
        self.textView.height = self.view.height - keyboardHeight - self.toolBar.height;
        self.toolBar.top = self.textView.bottom;
        NSLog(@"-3-toolBar.frame: %@", NSStringFromCGRect(self.toolBar.frame));
    } completion:^(BOOL finished) {
        NSLog(@"-5-toolBar.frame: %@", NSStringFromCGRect(self.toolBar.frame));
    }];



+ (instancetype)sharedInstance {
    static GCRichUploadMaskView *maskViewSingleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        maskViewSingleton = [[GCRichUploadMaskView alloc] init];
    });
    
    return maskViewSingleton;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    //    self.textView.height = self.view.height - self.keyboardHeight;//self.view.height - self.lineForSepart.bottom - self.keyboardHeight;
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    //    self.textView.height = self.view.height - self.lineForSepart.bottom;
}




//    NSInteger height = ceilf([self sizeThatFits:CGSizeMake(self.bounds.size.width, MAXFLOAT)].height);
//    if (self.numberOfLines > 0) {
//        _maxTextHeight = ceil(self.font.lineHeight * self.numberOfLines + self.textContainerInset.top + self.textContainerInset.bottom + self.lineHeight);
//    }






- (void)textDidChange {
    self.placeHolderLabel.hidden = self.attributedText.length > 0;
}






        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"-totalcount-:%@", @(totalcount));
            NSLog(@"-uploadContext-:%@", uploadContext);
            NSLog(@"-failcount-:%@", @(failcount));
        });







沙盒路径


1：沙盒存储，异步线程
2：






- (void)showImageWithPickImage:(GCPhotoInfo *)photoInfo {
        UIImage *image = photoInfo.image;
        if(photoInfo.imageUrl.length == 0){
            image = [UIImage imagenamed:R_gc_richtext_error_icon];
        }
        NSMutableAttributedString *string = [self.textView.attributedText mutableCopy];
        NSUInteger currentLocation = self.textView.selectedRange.location;
    
        NSAttributedString *lineString = [[NSAttributedString alloc] initWithString:@"\n\r"];
        if (self.textView.attributedText.length == 0) {
            [string appendAttributedString:lineString];
            currentLocation += 1;
        }

        GCRichTextAttachment *textAttachment = [GCRichTextAttachment attchWithImage:image imageUploadUrl:photoInfo.imageUrl viewWidth:self.textView.frame.size.width edgePadding:self.textView.lineFragmentPadding];
        NSMutableAttributedString *attachmentStr = [[NSAttributedString attributedStringWithAttachment:textAttachment] mutableCopy];
    
        [string insertAttributedString:attachmentStr atIndex:currentLocation];
//        [attachmentStr appendAttributedString:lineString];
        [string insertAttributedString:lineString atIndex:currentLocation + attachmentStr.length];
        
        self.textView.attributedText = string;
        self.textView.selectedRange = NSMakeRange(currentLocation + attachmentStr.length + lineString.length + 1, 0);
}





        self.layoutManager.showsInvisibleCharacters = NO;
        self.layoutManager.showsControlCharacters = NO;


#warning TODO - DEL
    self.ext = @"eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsInVybCI6Imh0dHA6Ly9tLjUxcGluZy5jb20vY21zLyNpZCMifQ";
    
    





  刘靖尧 二代身份证 412827199305280051
  李牧园 二代身份证 412824199104046833






turbos -p 2.1.145,TuanComponents:9.9.0.9,TuanBusiness:9.9.0.12



 


GCBusiness,2.1.141 fail
GCBaseModule,2.8.2   ok  发布了
TuanBusiness,9.9.0.13  ok
TuanComponents,9.9.0.9  OK


-p 9.9.0.9,TuanBusiness:9.9.0.13


turbos -p 2.1.141:GCBaseModule:2.8.1,TuanBusiness,9.9.0.12,TuanComponents,9.9.0.9

    turbos -p 2.0.119,DPServices:9.5.0.76


    
    if ([[NVMainBoard mainBoard].isLogin boolValue]){
        [[GCStyle style] performAfterLogin:^{
            NSLog(@"--12---");
        } cancelAction:^{
            NSLog(@"--22---");
        } inViewController:self];
    }



640*1136




业务线由教育签到“到店综合公共”后，babel生成的模型
nova：在DPServices和GCBussiness

1：保证有编辑权限



    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    [self.navigationController.interactivePopGestureRecognizer addTarget:self action:@selector(backGesture:)];//



BabyShopInfoBannerModule


EDUCoverPicModule  done



//        static const NSUInteger MAX_NUMBER_OF_LINES_ALLOWED = 3;
//        NSMutableString *t = [NSMutableString stringWithString: self.titleView.text];
//        [t replaceCharactersInRange: range withString: text];
//        NSUInteger numberOfLines = 0;
//        for (NSUInteger i = 0; i < t.length; i++) {
//            if ([[NSCharacterSet newlineCharacterSet] characterIsMember: [t characterAtIndex: i]]) {
//                numberOfLines++;
//            }
//        }
//        return (numberOfLines < MAX_NUMBER_OF_LINES_ALLOWED);
//        textView.text = [textView.text substringToIndex:textView.text.length - 1];



      CGSize newSize = [textView sizeThatFits:CGSizeMake(self.titleView.width - 2 * self.titleView.lineFragmentPadding, MAXFLOAT)];
        CGFloat sizeHeight = newSize.height - self.titleView.textContainerInset.top - self.titleView.textContainerInset.bottom;
        CGFloat lineHeight = self.titleView.font.lineHeight + self.titleView.lineHeight;
        int lines = sizeHeight / lineHeight;
//        NSLog(@"---lines: %@",@(lines));
//        NSLog(@"---lines: %@ : %@ : %@", @(lineHeight), @(self.titleView.font.lineHeight), @(sizeHeight));


http://home.mobile.sankuai.com/api/4254/detail.html
http://home.mobile.sankuai.com/model/9133/detail.html
http://home.mobile.sankuai.com/model/9134/detail.html


#import "NSArray+CIPFoundation.h"
士大夫
 

- (CGFloat)heightTtitle:(NSString *)value andWidth:(float)width{
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:value];
    NSRange range = NSMakeRange(0, attrStr.length);
    NSDictionary *dic = [attrStr attributesAtIndex:0 effectiveRange:&range];
    CGSize sizeToFit = [value boundingRectWithSize:CGSizeMake(width - 16.0, MAXFLOAT)
                                           options:NSStringDrawingUsesLineFragmentOrigin
                                        attributes:dic
                                           context:nil].size;
    return sizeToFit.height + 16.0;
}


//        CGFloat numberOfLines = floor((titleViewHeight - self.titleView.textContainerInset.top - self.titleView.textContainerInset.bottom) / self.titleView.font.lineHeight);

1400*900
 
//大图
https://wiki.sankuai.com/pages/viewpage.action?pageId=610303594

https://wiki.sankuai.com/pages/viewpage.action?pageId=1209666090

//    textView.layoutManager.textContainerChangedGeometry(textView.textContainer)

self.titleView.markedTextRange ==nil && 
MTServices,9.0.48


//UITexwview点击图片
https://stackoverflow.com/questions/19332283/detecting-taps-on-attributed-text-in-a-uitextview-in-ios
https://juejin.im/entry/57db65992e958a0054570c77
//计算行数
https://stackoverflow.com/questions/19478679/setting-maximum-number-of-lines-entry-on-uitextview
https://stackoverflow.com/questions/19478679/setting-maximum-number-of-lines-entry-on-uitextview
//计算行数 最对的版本
https://stackoverflow.com/questions/5837348/counting-the-number-of-lines-in-a-uitextview-lines-wrapped-by-frame-size/43150877
https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/TextLayout/Tasks/countLines.html
https://stackoverflow.com/questions/19123022/uitextview-number-of-lines-ios-7
https://gist.github.com/matt-curtis/f9efbd2c2df1b77e3471
解决方案
由于中文输入法的键盘上有联想、推荐的功能，所以可能导致文本内容长度上有些不符合预期，导致越界，所以可以参考�以下做下处理：
添加textView.markedTextRange == nil联想提示条的判断

- (void)textViewDidChange:(UITextView *)textView
{  
    if (textView.markedTextRange == nil && [textView.text length] > 60) 
    { 
        textView.text = [textView.text substringWithRange:NSMakeRange(0, 60)]; 
        [textView.undoManager removeAllActions]; 
        [textView becomeFirstResponder]; 
        return; 
    }
}
 

dianping://richeditor?contentid=0&biztype=abroadStragey&catid=75&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXcJsIjoiaW1laXR1YW46Ly93d3cubWVpdHVhbi5jb20vd2ViP3VybFx1MDAzZGh0dHBzJTNBJTJGJTJGaDUuZGlhbnBpbmcuY29tJTJGYXBwJTJGYXBwLWVkdWNhdGlvbi1vdmVyc2Vhcy1zdHVkeSUyRnN0cmF0ZWd5ZWRpdC5odG1sJTNGY21zSWQlM0RfaWRfJTI2c2hvcElkJTNEMTg4MDMyOSJ9

imeituan://www.meituan.com/gc/richeditor?contentid=0&biztype=abroadStragey&catid=75&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXJsIjoiaW1laXR1YW46Ly93d3cubWVpdHVhbi5jb20vd2ViP3VybFx1MDAzZGh0dHBzJTNBJTJGJTJGaDUuZGlhbnBpbmcuY29tJTJGYXBwJTJGYXBwLWVkdWNhdGlvbi1vdmVyc2Vhcy1zdHVkeSUyRnN0cmF0ZWd5ZWRpdC5odG1sJTNGY21zSWQlM0RfaWRfJTI2c2hvcElkJTNEMTg4MDMyOSJ9

imeituan://www.meituan.com/gc/richeditor?contentid=0&catid=20285&biztype=abroadStragey&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXJsIjoiaW1laXR1YW46Ly93d3cubWVpdHVhbi5jb20vd2ViP3VybFx1MDAzZGh0dHBzJTNBJTJGJTJGbS41MXBpbmcuY29tIn0

let layoutManager:NSLayoutManager = textView.layoutManager
let numberOfGlyphs = layoutManager.numberOfGlyphs
var numberOfLines = 0
var index = 0
var lineRange:NSRange = NSRange()

while (index < numberOfGlyphs) {
    layoutManager.lineFragmentRect(forGlyphAt: index, effectiveRange: &lineRange)
    index = NSMaxRange(lineRange);
    numberOfLines = numberOfLines + 1
}

print(numberOfLines)


dianping://shopinfo?shopid=65774947



2018-01-24 14:05:32.927823+0800 DPScope[90787:10306966] <GCRichTextEditorViewController.m(384)> {
  idx = 0,
  numberOfLines = 0,
  lineRange = {0, 16}
}
2018-01-24 14:05:32.927988+0800 DPScope[90787:10306966] <GCRichTextEditorViewController.m(384)> {
  idx = 16,
  numberOfLines = 1,
  lineRange = {16, 16}
}
2018-01-24 14:05:32.928148+0800 DPScope[90787:10306966] <GCRichTextEditorViewController.m(384)> {
  idx = 32,
  numberOfLines = 2,
  lineRange = {32, 16}
}
2018-01-24 14:05:32.928291+0800 DPScope[90787:10306966] <GCRichTextEditorViewController.m(384)> {
  idx = 48,
  numberOfLines = 3,
  lineRange = {48, 16}
}
2018-01-24 14:05:32.928405+0800 DPScope[90787:10306966] <GCRichTextEditorViewController.m(384)> {
  idx = 64,
  numberOfLines = 4,
  lineRange = {64, 13}
}





- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if (textView == self.titleView && textView.markedTextRange == nil) {
        NSLayoutManager *layoutManager = self.titleView.layoutManager;
        NSUInteger numberOfLines, idx;
        NSUInteger numberOfGlyphs = layoutManager.numberOfGlyphs + text.length;
        NSRange lineRange;
        NSRange realRage;
        BOOL result = YES;
        for (numberOfLines = 0, idx = 0; idx < numberOfGlyphs; numberOfLines++){
            [layoutManager lineFragmentRectForGlyphAtIndex:idx effectiveRange:&lineRange];
            NSLog(@"%@",@{@"idx" : @(idx),@"numberOfLines":@(numberOfLines),@"lineRange":NSStringFromRange(lineRange)});
            if (lineRange.location == NSNotFound && numberOfLines == (KMaxTitleLines + 1) && realRage.location != NSNotFound && realRage.location <= numberOfGlyphs) {
                self.titleView.text = [self substringWith:self.titleView.text toIndex:realRage.location];
                NSLog(@"cut : %@", @(realRage.location));
                result = NO;
//                break;
            }
            idx = NSMaxRange(lineRange);
            realRage = lineRange;
        }
        self.numberOfLines = numberOfLines;
        if (text.length == 0) { //del text
            return YES;
        }
        return result;
    }
    return YES;
}




15298387106


 EDUDrivingVenueModule  ok
 EDUHeadImgListCell  2 ok
SchoolCoverPicModule  ok

eduheadebaseinfocell 1 ok
EDUHeadImgScrollInfoCell 1 ok

设计师模块
点评：wedhome_design_designer 
美团：poi_house_designer

人把自己置身于忙碌当中，有一种麻木的踏实，
但丧失了真实，你的青春也不过只有这些日子。


SPUUploadImageManager



throwable

picasso_house_nearmarket   dist/House/nearmarket/picasso_house_nearmarket.js

house_nearmarket_view  dist/House/nearmarket/house_nearmarket_view.js

picasso_house_homeguess  dist/House/homeguess/picasso_house_homeguess.js
house_homeguess_view   dist/House/homeguess/house_homeguess_view.js

picasso_house_popularactivities   dist/House/popularactivities/picasso_house_popularactivities.js
house_popularactivities_cell  dist/House/popularactivities/house_popularactivities_cell.js

picasso_house_relevantarticles  dist/House/relevantarticles/picasso_house_relevantarticles.js
house_relevantarticles_cell  dist/House/relevantarticles/house_relevantarticles_cell.js


bd248a6983c6520ba7558c3f15ea107353fe6e58

mobile/GCPicasso




16318305aa6c32112398ae7fbc19af02083bd45b





DP 9.10,MT9.1团购预约列表页图片获取修复

 


turbos -p 2.1.198,TuanBusiness:9.10.0.5,GCBaseComponents:1.3.134




round  如果参数是小数  则求本身的四舍五入.
ceil   如果参数是小数  则求最小的整数但不小于本身.
floor  如果参数是小数  则求最大的整数但不大于本身. 


//self.navigationController.
    id traget = self.navigationController.interactivePopGestureRecognizer.delegate;
    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc]initWithTarget:traget action:nil];
    [self.view addGestureRecognizer:pan];
    

http://www.dpfile.com/sc/eleconfig/modulepool/2018011515124812311.png



NSInteger 在 32位系统是 int ，64位系统是 long 




在32位系统中
int 占4个字节 
long 占4个字节 
NSInteger 是int的别名，占4个字节 
long long 占8个字节 
int32_t 是int的别名，占4个字节 
int64_t 是long long的别名，占8个字节

在64位系统中
int 占4个字节 
long 占8个字节 
NSInteger 是long的别名，占8个字节 
long long 占8个字节 
int32_t 是int的别名，占4个字节 
int64_t 是long long的别名，占8个字节











金域蓝湾





RAC(self, price) = RACObserve(self.viewModel, price);
RAC(self.cellForBanner, imgURL) = [RACObserve(self.viewModel, imgURLForBanner) ignore:nil];
RAC(self, shopId) = NVWBObserve(self, shopId);

https://wiki.sankuai.com/pages/viewpage.action?pageId=518357748


6.2 RACsubscriber:表示订阅者的意思，用于发送信号，这是一个协议，不是一个类，只要遵守这个协议，并且实现方法才能成为订阅者。通过create创建的信号，都有一个订阅者，帮助他发送数据。

6.3 RACDisposable:用于取消订阅或者清理资源，当信号发送完成或者发送错误的时候，就会自动触发它。

使用场景:不想监听某个信号时，可以通过它主动取消订阅信号。
6.4 RACSubject:RACSubject:信号提供者，自己可以充当信号，又能发送信号。

使用场景:通常用来代替代理，有了它，就不必要定义代理了。

// 二、RACCommand使用注意:
    // 1.signalBlock必须要返回一个信号，不能传nil.
    // 2.如果不想要传递信号，直接创建空的信号[RACSignal empty];
    // 3.RACCommand中信号如果数据传递完，必须调用[subscriber sendCompleted]，这时命令才会执行完毕，否则永远处于执行中。
    // 4.RACCommand需要被强引用，否则接收不到RACCommand中的信号，因此RACCommand中的信号是延迟发送的。

 

8.1 RAC(TARGET, [KEYPATH, [NIL_VALUE]]):用于给某个对象的某个属性绑定。

    // 只要文本框文字改变，就会修改label的文字
    RAC(self.labelView,text) = _textField.rac_textSignal;

8.2 RACObserve(self, name):监听某个对象的某个属性,返回的是信号。

[RACObserve(self.view, center) subscribeNext:^(id x) {
      
        NSLog(@"%@",x);
    }];

8.3  @weakify(Obj)和@strongify(Obj),一般两个都是配套使用,在主头文件(ReactiveCocoa.h)中并没有导入，需要自己手动导入，RACEXTScope.h才可以使用。但是每次导入都非常麻烦，只需要在主头文件自己导入就好了。
 









https://github.com/opentok/CallKit





To manually generate a Certificate, you need a Certificate Signing Request (CSR) file from your Mac. To create a CSR file, follow the instructions below to create one using Keychain Access.

Create a CSR file.
In the Applications folder on your Mac, open the Utilities folder and launch Keychain Access.

Within the Keychain Access drop down menu, select Keychain Access > Certificate Assistant > Request a Certificate from a Certificate Authority.

In the Certificate Information window, enter the following information:
In the User Email Address field, enter your email address.
In the Common name field, create a name for your private key (e.g., John Doe Dev Key).
The CA Email Address field should be left empty.
In the "Request is" group, select the "Saved to disk" option.
Click Continue within Keychain Access to complete the CSR generating process.









http://www.justalkcloud.com/cn/product/#audio

https://www.163yun.com/
https://docs.amazonaws.cn/sns/latest/dg/sns-mobile-push-send-apns-voip.html
https://docs.aws.amazon.com/zh_cn/sns/latest/dg/SMSMessages.html

https://heroku.com : Tonny*90



https://github.com/Hitman666/ios-voip-push
https://www.jianshu.com/p/3bf73a293535
https://developer.apple.com/library/content/documentation/Performance/Conceptual/EnergyGuide-iOS/OptimizeVoIP.html#//apple_ref/doc/uid/TP40015243-CH30-SW1
https://stackoverflow.com/questions/37886197/show-ios-native-call-ui-for-outgoing-voip-calls-with-callkit
https://github.com/opentok/CallKit
https://www.jianshu.com/p/22ffe3816090
//voip push
https://www.justalkcloud.com/cn/docs/gitbook/account/PushNotificationIntegration/VoIPPush/readme.html


shopid", "productid", "period", "day
dianping://picassomodules?config=joyfitness_createorder_default&title=预约订单&shopid=123&productid=998



清理空间：pod cache clean --all
空间：brew install ncdu


网易云信
容联云
云之讯
Google webrtc
Agora


imeituan://www.meituan.com/sport/coachbookingsubmitorder?shopid=163188224&spuid=770451

PicassoModulesViewController


joyfitness_createorder_default


meituanpayment://cashier/launch?trade_number=交易号&pay_token=支付paytoken

2000

身份证+银行卡

不要去，浦东东方路
80：45
1：00-4：30

meituanpayment://cashier/launch?trade_number=1805044007050243940&pay_token=3dcf1e82da5d4eec67040de912aa6883


根据文档：以 A 呼叫 B 为例，一般呼叫流程如下: A 向信令服务器发起呼叫请求。 信令服务器检查 B 是否在线: 如不在线，向 A 返回 B 不在线错误。 如在线，信令服务器生成频道名，返回给 A；并向 B 投递呼叫信令。 那么如果B不在线，不应该是发起VoIP Push吗，也就是你们不支持支持VoIP Push吗？请给与解答


  GCPicassoModules/picasso_fitness_createorder_mapi_module

AgoraAudioKit : 音频



第一次 进入CrashViewController退出后，先调用ViewController的viewWillAppear中遍历数组，此时数组中没有数据；然后调用CrashViewController的dealloc方法：已释放的CrashViewController对象会添加数组。
第二次 进入CrashViewController退出后，再次调用ViewController的viewWillAppear中遍历数组，此时访问到CrashViewController对象，发生野指针crash


imeituan://www.meituan.com/gc/richeditor?contentid=662&catid=20285&biztype=abroadStragey&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXJsIjoiaW1laXR1YW46Ly93d3cubWVpdHVhbi5jb20vd2ViP3VybFx1MDAzZDEifQ
imeituan://www.meituan.com/gc/richeditor

{"dpUrl":"dianping://richeditor?contentid=0&catid=75&biztype=abroadStragey&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXJsIjoiZGlhbnBpbmc6Ly93ZWI_dXJsXHUwMDNkaHR0cHMlM0ElMkYlMkZ3d3cuYmFpZHUuY29tJTJGIn0","mtUrl":"imeituan://www.meituan.com/gc/richeditor?contentid=0&catid=20285&biztype=abroadStragey&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXJsIjoiaW1laXR1YW46Ly93d3cubWVpdHVhbi5jb20vd2ViP3VybFx1MDAzZGh0dHBzJTNBJTJGJTJGd3d3LmJhaWR1LmNvbSUyRiJ9"}

列表页：

homeshopcaselist                        : WEDHomeShopCasePhotoShellController

BEAUTYCaseListShellController

HOUSECaseAndPicSpaceShellListViewController
BabyNewCaseListShellController
NVTableHorizontalView



dianping://houseskulist?bizname=decocase

 
有数据源
GCTabSegmentedControl


15298387106




homepictureandvideolist ：这个应该是第一次进页面要请求的接口
homepictureandvideopager：这个后续下拉更多的接口



dianping://housealbum

babynewcasedetail                       : BabyNewCaseDetailViewController
babynewcaselist                         : BabyNewCaseListViewController
babynewcaselistshell                    : BabyNewCaseListShellController



integerForKey:@"orderId"


TGApplyRefundViewController
在5上是否正确

(NSInteger)orderId





8243538138689715107

 Discarding message for event 12 because of too many unprocessed messages


 Discarding message for event 12 because of too many unprocessed messages

heightFor HeaderInSection


----- 点评 ------


团购订单详情：orderdetail_other
orderdetail_orderinfo
orderdetail_couponlist_other
orderdetail_textinfo
orderdetail_shipinfo
orderdetail_service
orderdetail_refund
orderdetail_luckmoney
orderdetail_reduceflydeal


团购订单详情：orderdetail_gcdefault

orderdetail_orderinfo
orderdetail_couponlist --
orderdetail_textinfo
orderdetail_shipinfo
gc_orderdetail_service --
orderdetail_shop --
orderdetail_service
orderdetail_refund
orderdetail_recommend --
orderdetail_luckmoney
orderdetail_reduceflydeal


团购订单详情：orderdetail_ktv
orderdetail_orderinfo
orderdetail_couponlist
orderdetail_textinfo
orderdetail_shipinfo
orderdetail_service
orderdetail_service
orderdetail_refund
orderdetail_ktv_marketinfo --
orderdetail_recommend
orderdetail_luckmoney
orderdetail_reduceflydeal

团购订单详情：orderdetail_beauty
orderdetail_orderinfo
orderdetail_beauty_notice --
orderdetail_couponlist
orderdetail_textinfo
orderdetail_shipinfo
orderdetail_service
orderdetail_refund
orderdetail_recommend
orderdetail_reduceflydeal
orderdetail_luckmoney

orderdetail_beauty_insurance


-- ALL

orderdetail_orderinfo
orderdetail_couponlist_other
orderdetail_couponlist
orderdetail_beauty_notice
orderdetail_textinfo
orderdetail_shipinfo
orderdetail_service
gc_orderdetail_service
orderdetail_refund
orderdetail_luckmoney
orderdetail_reduceflydeal
orderdetail_ktv_marketinfo
orderdetail_recommend
orderdetail_shop
orderdetail_beauty_insurance --

2147483647
2200001316



---- 美团 ----


orderdetail_gc_headershare
orderdetail_gc_headerinfo
orderdetail_gc_servicetags
orderdetail_gc_review
orderdetail_gc_couponlist
orderdetail_gc_orderinfo
orderdetail_gc_payorder
orderdetail_gc_merchantinfo
orderdetail_gc_packagewebdetails
orderdetail_gc_luckymoneyshare



TGApplyRefundViewController ：接收参数值nsinteger改成了longlong


TGPurchaseResultViewController integerForKey:@"orderid"]



 



nv_isUpdatingModules




richeditor









17661020






底部栏按钮调整：家装+教育

 










-@property (assign, nonatomic) NSInteger orderId;
+@property (assign, nonatomic) int64_t orderId;


self.orderId = orderId.integerValue;
self.orderId = orderId.longLongValue;



-orderid = [urlAction integerForKey:@"orderid"];
_orderid = [[urlAction stringForKey:@"orderId"] longLongValue];




params.orderid = @(self.applyRefundData.orderId);
params.orderid = @(self.applyRefundData.longOrderId);


[action setInteger:_order.uid forKey:@"orderId"];
[action setString:[NSString stringWithFormat:@"%@",@(_order.longOrderId)] forKey:@"orderId"];



[action setInteger:_orderId forKey:@"orderId"];
[action setString:[NSString stringWithFormat:@"%@",@(_orderId)] forKey:@"orderId"];



self.orderId = [x integerValue];
self.orderId = [x longLongValue];


## 强制依赖TuanBusiness，在10.0.1后要去除的
http://mk.sankuai.com/moduledependency/moduledependency-list.html?name=Education
http://mk.sankuai.com/moduledependency/moduledependency-list.html?name=OverseasBusiness
http://mk.sankuai.com/moduledependency/moduledependency-list.html?name=NVAppLaunch
http://mk.sankuai.com/moduledependency/moduledependency-list.html?name=TitansAdapterDPIMP




----orderdetail_default--

orderdetail_gc_headershare
orderdetail_gc_servicetags
orderdetail_gc_headerinfo
orderdetail_gc_review
orderdetail_gc_payorder
orderdetail_gc_notiinfo
orderdetail_gc_couponlist
orderdetail_gc_orderinfo
orderdetail_gc_merchantinfo
orderdetail_gc_packagewebdetails
orderdetail_gc_imagetextinfo
orderdetail_gc_service
orderdetail_gc_luckymoneyshare


--orderdetail_ktv--
orderdetail_ktv_package


--orderdetail_beauty--
orderdetail_beauty_notice
orderdetail_beauty_insurance


--orderdetail_physicalExamination--
orderdetail_gc_notiinfo



--orderdetail_empty--



佛伦斯 






dianping://picassomodules?config=picassomodule_demo_list






self.contentsize





DAHRVP

dahavp












/Users/fengtf/Library/Developer/Xcode/DerivedData/iMeituan-gpzbumlpnpjfqkdyyalknuweclwd/Build/Intermediates.noindex/imeituan.build/Debug-iphonesimulator/imeituan.build/Script-887AD6E41C06303400A1173C.sh: line 2: /Users/fengtf/Documents/MTDP/imeituan-legacy/imeituan/../Pods/Target Support Files/Pods-imeituan/Pods-imeituan-resources.sh: No such file or directory



Build operation failed without specifying any errors. Individual build tasks may have failed for unknown reasons.
One possible cause is if there are too many (possibly zombie) processes; in this case, rebooting may fix the problem.
Some individual build task failures (up to 12) may be listed below.




到公司半年的时间，非常感谢各位同事的热情帮助，自己慢慢适应公司的开发节奏，按时完成业务需求。做事比较踏实但缺乏精益求精，这个自己要去改进；现在自己参与了几个业务线的开发，也感受到需求多时间紧的时候，自己做事效率底下，这个要自己多去规划提高自己；自己的知识面比较狭窄，现在也参与到Picasso的开发，希望以这个为契机扩展知识技能；现在自己只是开发业务需求，下阶段多学习优秀组件，多能参封装一些通用的组件，学习和提高自己的技能。


来到美团点评将近半年的时间，感受到团队的精益求精，受益良多。在后面迭代业务需求较多的时候没有能分配好时间导致做事效率低乱。
下阶段自己要多学习提高自己，并以Picasso为契机扩展自己前端的技能树，希望能够在做好业务需求的同时，多能参与一些通用组件的开发以及工具的开发。

能认真完成业务需求。但在工具类和框架建设相关思考较少。



项目名称：教培频道
开始时间  2017年7月6 - 现在
请选择日期
项目角色 ： 成员
负责的主要工作 

教培频道：
完成美团与点评侧教培频道的业务开发需求，并业务需求外：
1：完成品牌介绍等以前的模块由于写法不规范不好维护的非业务需求重构；
2：协助产品梳理商详页教培模块打点，解决以前上报不规范或者字段确实的问题；
3：完成图文混排编辑器的开发，并且开发时作为了通用组件，没有耦合业务代码。


家装频道：
完成美团与点评侧家装频道的业务开发需求，并业务需求外：
1：商户案例，头图轮播等以前的模块由于写法不规范导致线上有bug的非业务需求重构；
2：协助产品梳理商详页家装模块打点，解决以前上报不规范或者字段确实的问题，
3：配合UGC解决家装签约用户评论的课诉问题



项目名称：团购个人中心
开始时间  2017年10月24 - 现在
项目角色  ：成员
负责的主要工作 

完成订单详情，退款相关的业务需求开发；以及组件的迁移改造。



业绩贡献/主要贡献 : 业绩贡献，个人收获与总结

1. 认真负责完成几个业务的Native需求开发，并学习使用Picasso，入职以来无线上bug发生。并且发现以前的代码有不合理的地方及时修改，抽取成双端模块，减少维护成本。
2. 完成了GCBaseComponents，GCComponents等的动态库改造；
3. 图文混排编辑器以及图片上传公用组件的开发。
4. 目前自己的知识面比较狭窄，希望以Picasso为契机扩展知识技能。
4. 团队成员比较认真负责，精益求精这也是我收获最大的。下一步在完成业务需求的是同时，思考工具类或组件的开发，学习和提高自己的技能。


完成了GCBaseComponents，GCComponents等的动态库改造。
3：图文混排编辑器以及图片上传公用组件的开发。

在平时的工作里，遇到不会的问题，我不会退缩，积极主动的求助有经验的同事和领导，并且善于总结和钻研


//iOS
https://wiki.sankuai.com/pages/viewpage.action?pageId=1407436635
https://wiki.sankuai.com/pages/viewpage.action?pageId=1033840028



自我介绍，
业绩贡献
未来规划


完整简洁的故事


岗位职责，项目成果，专业贡献

项目目的，关键成果产出，困难挑战，解决方案
未来规划





建材商户详情页 调整部分模块



短视频展示模块 
点击态规范
院校页新增广告位

改善代码质量，该重构的重构，该重写的重写
改善产品体验，从自身出发，结合实际，优化体验。


⛳️1. 改善代码质量，该重构的重构，该重写的重写
⛳️2. 改善工作效率，多参与工具类或公用组件的开发，提升开发效率
⛳️3. 改善产品体验，从自身出发，结合实际，优化体验。

🚩1. 以Picasso为契机扩展前端的技能
🚩2. 学习优秀开源代码，提升自己参与写公用组件的技能
🚩3. 多总结，多分享
🚩4. 改善产品体验，从自身出发，结合实际，优化体验。



由于历史原因打点信息不准确不规范，只有字段缺失，教育和教培都进行了所有模块的摸底排查，每个点进行核对，保证上报数据的正常。



家装，已签约用户评论投诉：好不容易填了好多内容，最后发表失败，这个让人恼火的。

很简单，也很容易解决，但是我们要思考，这种情况很常见，APP中有很多输入框，我们一般是限制键盘类型来达到目的，但是用户是可以粘贴的，而且是随意的操作，由于输入
了很多内容，提交失败，无法修改，选择了投诉，所以对于输入数字等特殊类型的文本框，不仅仅是限制键盘类型，还是限制用户粘贴的行为（文本，长度等）


家装，已签约用户评论投诉：好不容易填了好多内容，最后发表失败，这个让人恼火的。
textView.textContainer.maximumNumberOfLines = 5;
//与上面配置使用
textView.textContainer.lineBreakMode = NSLineBreakByClipping;

但是当输入超过限制行数的时候，依然可以继续输入；而且粘贴进来的文字，超过限制的时候，还是可以粘贴进来，并不会被自动截断。
------------------------------------------------------------------------------------------------------

工作内容：美团与点评教培频道的需求开发
职责：开发
主要成果：认真完教培频道版本迭代的需求开发，并业务需求外：
1：完成品牌介绍等以前的模块由于写法不规范不好维护的非业务需求重构。
2：协助产品梳理所有教培模块的打点，解决以前上报不规范或者字段缺失的问题。
3：完成图文混排编辑器的开发，没有耦合业务代码。



各位大佬帮忙看一下，感觉写的技术含量都不高，


工作内容：美团与点评家装频道的需求开发
职责：开发
主要成果：认真完成家装频道的业务开发需求，并业务需求外：
1：商户案例，头图轮播等以前的模块由于写法不规范导致线上有bug的非业务需求重构。
2：协助产品梳理所有家装模块的打点，解决以前上报不规范或者字段缺失的问题。
3：配合解决家装签约用户评论的课诉问题。


工作内容：美团与点评个人中心的团购需求开发
职责：开发
主要成果：完成订单详情，退款相关的业务需求开发；以及组件的迁移改造。


主要业绩：

1：认真负责完成几个业务线的需求开发；并学习使用Picasso；入职以来无线上bug发生；并且发现以前的代码有不合理的地方及时修改，抽取成双端模块，减少维护成本。
2：完成了GCBaseComponents，GCComponents等的动态库改造。
3：图文混排编辑器以及图片上传公用组件的开发。
4：学习并掌握Picasso扩展知识技能。
5：团队成员比较认真负责，精益求精这也是我收获最大的；下一步在完成业务需求的是同时，思考工具类或组件的开发，学习和提高自己的技能。
6：业务线多，工作任务重的时候，划分任务轻重缓急，并制定每天的开发任务。


UIWebView.h

个人工作的收获与总结：

我极富敬业精神、积极开朗、乐观向上，有很强的沟通能力和团队协作能力。能承受压力，喜欢富有挑战性和具有发展空间的工作。

it行业是一个具有挑战性的行业，随着科技的不断发展它也在不断更新，不仅要会工作还要会学习，我喜欢接受这种挑战，也愿意从事这方面工作。而且我能认真执行公司决策，服从公司领导，做事能吃苦耐劳，工作积极，有良好的团队合作精神。

在平时的工作里，遇到不会的问题，我不会退缩，积极主动的求助有经验的同事和领导，并且善于总结和钻研
工作任务重的时候，我会排出一个计划表，按照轻重缓急程度安排好自己的时间，避免出现任务堆积和时间分布不均匀的情况

能认真完成业务需求，主动重构优化以前不合理的代码

UITextView+UIImageView
UIWebView
UITextView


2018-03-30 08:56:38.381562+0800 DPScope[2375:654935] [self obtainDefaultThreshold]: 80
2018-03-30 08:56:38.435960+0800 DPScope[2375:654935] loading status : 0
2018-03-30 08:56:38.436394+0800 DPScope[2375:654935] --1---: 1
2018-03-30 08:56:38.668848+0800 DPScope[2375:654935] --2---: 1 - {0, 0, 0, 0} - {80, 0, 0, 0}
2018-03-30 08:56:39.523618+0800 DPScope[2375:654935] --2---: 0 - {0, 0, 0, 0} - {0, 0, 0, 0}


contentOffset
类型: CGPoint
x: 相对于自己, 自己的内容在x轴的偏移量
y: 相对于自己, 自己的内容在y轴的偏移量
contentInset
在内容周围添加额外的滚动区域

线程模型


dianping://tuanbookshoplist?dealid=13870265


先面算法，基础信息  再问iOS相关


start
home_guesslike_refresh_start_00

loading
home_guesslike_refresh_loading_000


finish
home_guesslike_refresh_finish_00


1199931

wedhome_design_designer

17+25+4+20+8

家装，删除代码
wedhome_market_time
wedhome_market_querydata
wedhome_market_brief



imeituan://www.meituan.com/gc/paymentresult?orderid=1656355195&channel="beauty"








倪浩：6
腾飞：6
晟涛：2.5
德鹏：3

共计：17.5






gem source -a http://themis.sankuai.com/



2200001637



2200001616

仙本那 - 亚庇 - 吉隆坡


21369201


 /Users/fengtf/Library/Developer/CoreSimulator/Devices/8B7FE9CB-F590-4979-B7DD-28422A1AF33B/data/Containers/Data/Application/D12BE296-1C58-40BC-8A0E-69320832CB55



dianping://productdetail?shopid=4119052&productid=100246306




dianping://productdetail?shopid=4119052&productid=100246306



baby_cpc : NVMidasWedShopAdModule

shop_friend_ad              : NVShopInfoFriendAdModule








        case NVCouponStatusUnUse:
        case NVCouponStatusUsed:
        case NVCouponStatusExpired:



HomeCommonPhoneResultDo




15298387106


15298387106





双端：
教培：4：我 + 10

家装  22：你

HOUSEExhibitionAddrPhoneModule

单端：
家装：27 ：你
教培：25 ：我


DPV10大改版：


#import "UITableViewCell+NVSeparator.h"

self.cellForHeader.nvCellMiddleLineColor = [UIColor clearColor];

return [[GCStyle selectValueOnDP:@(52.f) onMT:@(45.0f)] floatValue];




[[EDUInterstHeaderCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[EDUInterstHeaderCell cellReuseId:nil] marginInsets:self.moduleSetting.defaultMarginInsets]


[[EDUInterstHeaderCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil marginInsets:self.moduleSetting.defaultMarginInsets]

GCBaseModuleUtils





双端：
已改：
EDUInterestListModule:


未改：Gride
EDUNewShopBrandModule
EDUCmsVideoListModule



教培单端：

已改：
EDUDrivingVenueModule
EDUProductListModule


未改：
SchoolAdverModule ： 两边不需要间距
NVAlumnusModule ： 没有写view/cell















根据代码来看，真正的代码改一处 两处变的模块是：

poi_edu_good_hour_product

edu_new_booking_dialog

edu_brand/poi_edu_detail_info

poi_edu_short_video

其他的都是代码写在两端的






shop_renovation_design_booking：

GCHouseModules/picasso_house_designer_module
 GCHouseModules/picasso_house_designcaptain_module



imeituan://www.meituan.com/merchant?id=402274&showtype=entertainment


dianping://mapnavigation?shopid=2544853


EduInternalSchoolRecruitInfo




dianping://housealbum?shopid=16821231
imeituan://www.meituan.com/gc/housealbum?shopid=16821231




GCPicassoModules/picasso_fitness_createorder_anonym_module


GCPicassoModules/picasso_fitness_createorder_anonym_module


GCPicassoModules/picasso_fitness_createorder_phone_module


GCPicassoModules/picasso_fitness_createorder_remark_module


GCPicassoModules/picasso_fitness_createorder_submit_module


GCPicassoModules/picasso_fitness_createorder_tips_module



地址电话模块
GCPicassoModules/picasso_edu_address_phone_module

招生简章
GCPicassoModules/picasso_education_recruit_info_module

招生节点
GCPicassoModules/picasso_education_recruit_node_module

对口信息
GCPicassoModules/picasso_education_school_map_info_module


编辑器：
imeituan://www.meituan.com/gc/richeditor?contentid=0&catid=20285&biztype=abroadStragey&ext=eyJiaXpUeXBlIjoiYWJyb2FkU3RyYWdleSIsImJpeklkIjoiIiwidXJsIjoiaW1laXR1YW46Ly93d3cubWVpdHVhbi5jb20vd2ViP3VybFx1MDAzZDEifQ

预约列表
dianping://tuanbookshoplist?dealid=17661020


家装相册列表：
dianping://housealbum?shopid=16821231
imeituan://www.meituan.com/gc/housealbum?shopid=16821231

休娱
imeituan://www.meituan.com/picassomodules?config=joyfitness_createorder_default&title=预约订单&shopid=2721985&productid=998

dianping://picassomodules?config=joyfitness_createorder_default&title=预约订单&shopid=2721985&productid=998

imeituan://www.meituan.com/picassomodules?config=joyfitness_createorder_default&title=预约订单&shopid=2721985&productid=809985&starttime=1526558400000



imeituan://www.meituan.com/merchant?id=163188224&showtype=fitness
dianping://shopinfo?id= 96379840




imeituan://www.meituan.com/merchant?id=160050463&showtype=fitness






 PicassoModuleViewItemProtocol

PicassoModuleViewItem



dianping://shopinfo?shopid=24678551




PicassoModuleViewItemProtocol  : 实现这个代理




<PicassoModuleNormalCell: 0x114a31e00; baseClass = UITableViewCell; frame = (0 0; 320 44); layer = <CALayer: 0x119fd6a30>>
<PicassoModuleNormalCell: 0x114a31e00; baseClass = UITableViewCell; frame = (0 0; 320 44); layer = <CALayer: 0x119fd6a30>>
<PicassoModuleNormalCell: 0x114a31e00; baseClass = UITableViewCell; frame = (0 64.0001; 414 0); clipsToBounds = YES; autoresize = W; layer = <CALayer: 0x119fd6a30>>

 
   // PCSB_moduleEvents.registerKeyboard({
        //     identifier:"PhoneScrollViewInfo.phone-2",
        //     // targetIdentifier:"PhoneCell.target2"
        // });

         // PCSB_moduleEvents.registerKeyboards(["phone","phone2","bottomphone","topphone"])






        if (!self.disableReuse || self.currentView != cell) {
            self.currentView = cell;
        }





// import { HomeMaterialCouponModule } from '../../Models/HomeMaterialCouponModule';
// import { HomeMaterialCouponBottomBarDo } from '../../Models/HomeMaterialCouponBottomBarDo';
// import { HomeFreeDesignBottomBarDo } from '../../Models/HomeFreeDesignBottomBarDo';
// import { HomeFreeDesignStepsDo } from '../../Models/HomeFreeDesignStepsDo';



4131256
4191155


57465384
17202610


        // delete this.moduleInfo.popViewInfo;
        // // this.painting(this.moduleInfo);
        // const safeResult2 = <HomeSubmitLeadsResultDo.safe_t>{
        //     "title": "申请成功",
        //     "orderId": 12638,
        //     "code": 200,
        //     "message": "稍后客服将电话联系您，请保持手机畅通"
        // }
        // this.makeupSuccessPopModule(safeResult2);
        // this.moduleInfo.popViewInfo = this.popSuccessViewInfo;
        // this.painting(this.moduleInfo);

        // return;




GCDealListViewController


GCDealListShellController


GCProductDetailShellViewController

 category: GCStyle.selectValue("gc", "dianping_nova"),
 
  bid: "b_opyh6lys",
  labs: {
      poi_id : this.shopId,
      custom: {
          flag: data.shopPhoneList.length > 0 ? 1 : 0,
      }
  }
});





家装特色服务(Leads承接项目)模块


#import "UITableViewCell+NVSeparator.h"


.nvCellMiddleLineColor = [UIColor clearColor];




密室列表页:增加TAB入口，连接到新的落地页面

kmmhd://picassomodulesplayground?serverip=172.22.217.121&serverport=6969://picassomodulesplayground?serverip=172.22.217.121&serverport=6969

kmmhd://picassomodulesplayground?serverip=172.22.217.121&serverport=6969



dianping://housealbum?shopid=17661020&index=2



4208866



16822787 和48399998












@property (nonatomic, strong) EDUCouseTitleCell *titleCell;
@property (nonatomic, strong) EDUCourseListCell *productListCell;
@property (nonatomic, strong) EDUCourseTagsCell *tagsCell;




划卡后，回到上个页面 次数要变化





edu_teacher_recommend
pet_service
edu_tuan_review
edu_top
edu_driving_tag
edu_tag
edu_teacher
edu_tuan_teacher
school_celebrity
school_top
school_info
school_majors
school_around
school_order
school_famousTeacher













会员相关桥
1. 是否登录
boolean isLogined()

4. 登出
void logout()


2. 获取会员信息
User getUserInfo()

3. 设置会员信息，设置空表示清除
setUserInfo(User user)


User结构
User {
 userID,
 username,
 userPhoneNumber
}



商户桥
5. 获取shopid
int getShopId()


5. 获取shopid   int getShopId()
------
这个桥信息不太够，需要个Shop对象，现在需要 shopID 和 shopname




moduleUser




余额：balance

次数：cardTimes.length

折扣 discount

周期



npm install --save @dp/picasso-kmmhd-bridges@0.0.5




这个展示：当前门店可用的优惠券 还是 所有门店下的优惠券






GCPicassoModules/picasso_plaform_deallist_adver_module





便签：偏上10

标题 偏下4

价格：偏下12


3

13 


d3cbd8dd

dc8b7b7a

444de2bb








turbos -p 10.3.0.7,DPServices:10.3.0.252




      broadcast.subscribe("com.dianping.kmmhd.ACTION_UPDATE_USER", (info) => {
            if (info != undefined){
                const clientDo = JSON.parse(info)
                log("-ACTION_UPDATE_USER 2:"+JSON.stringify(clientDo));
            } else {
                log("-ACTION_UPDATE_USER 1:"+JSON.stringify(info));
            }
        });
        





pop框：
picasso_order_comprehensive_consume_manifest_module






recharge








轮播，右对齐，优先级比较高



let url = 'kmmhd://picassomodules?picassojs=KMMHDPicassoModules/picassoviewcontroller_employee_select';
if (id != null) {
url += `&selected_employee_id=${id}&selected_employee_name=${name}`;
}

PCSB_kmmhdModulePopup.popup({
url: url,
type: KMMHD_PopupType.Custom,
direction: KMMHD_PopupDirection.Upward,
clickMaskToDismiss: false,
conerRadius: true,
margin: {
leftMargin: (Screen.width() - 540) / 2,
rightMargin: (Screen.width() - 540) / 2,
topMargin: 30,
bottomMargin: 30
}
});



1. 划卡

picassoviewcontroller_order_timescard



picasso_order_times_card_module

picassovcview_pop_normal_header_cell
picassovcview_order_times_card_cell
picassovcview_kmm_loading_popview



picasso_order_times_card_list_module

picassovcview_order_times_card_list_cell
picassovcview_order_times_card_employ_list_cell
picassovcview_kmm_selectartist_popview



picasso_order_times_submit_card_module

picassovcview_order_times_submit_card_cell
picassovcview_kmm_loading_popview



2. 次卡充值


picassoviewcontroller_times_recharge_card


picasso_times_card_recharge_module

picassovcview_kmm_loading_popview
picassovcview_pop_normal_header_cell
picassovcview_times_card_recharge_project_name_cell
picassovcview_times_card_recharge_project_count_cell
picassovcview_times_card_recharge_project_price_cell
picassovcview_times_card_recharege_card_cell
picassovcview_select_cell
picassovcview_textview_cell
picassovcview_kmm_modifyprice_popview
picassovcview_kmm_modifydiscount_popview



picasso_times_card_recharge_submit_card_module

picassovcview_times_card_recharge_bottom_cell
picassovcview_kmm_loading_popview


 
A18021127

发票：
qiandong03

















picasso_order_times_card_module













连锁 poiFeatureIcon

设施：AdsInfo


catename
|
areaname


轮播:Transactions

tag：PoiFeatureLabels

左上角图标：MtActivityTag






poiFeatureIcon 或者收藏连锁
adsInfo 设施（广告）
video 商户头图里面播放ICON 
catename 后台类目名字
areaname 商区
transactions 交易信息
poiFeatureLabels POI标签
mtActivityTag  左上角商家优惠图标
poiConsumeStr 人均
icons 商家标题后面图标
poiItemModels 预定、团、促
purchaseItemModel 限时抢购


图片上的广告，adsinfo/tips


GCDealListPurchaseAndPoiView


MT 9.6 iOS 列表页 商户信息模块数据为："PurchaseItemModel": {} ，展示了icon
adsinfo:

labelForAdvert         : tip            : 图片左下角icon
labelForAdvertSub      : tipSub          ：  
imageViewForFire       : adFlagUrl        ：火 
viewForAdvert          : adExplanationTags  人气/ 新店 大拇指  比 火 优先级最高
imageViewForAdvertBG  : -> 背景




shopPromoLabelname ? 



https://p0.meituan.net/dpnewvc/be7258eeac9f25661a909615298b36e9683.png



file:///Users/fengtf/Downloads/%5B标注%5D美团侧-休娱列表页通用版/index.html#artboard0
file:///Users/fengtf/Downloads/DP10.3MT9.4/R29-美容iPad%20-%20二期收银台/index.html#artboard22
file:///Users/fengtf/Downloads/MT9.6DP10.4/xin-%5B标注%5D美团侧休娱POI列表页改版-样式加行高0719/index.html
file:///Users/fengtf/Downloads/MT9.6DP10.4/%5B标注%5D美团侧-休娱列表页通用版/index.html#artboard2



1402433837

dianping://purchaseresult?orderid=1402433837



购买结果页面：dianping://purchaseresult?orderid=1947615269
DEFPurchaseResultViewController

dianping://foodpurchaseresult?orderid=1947648107

receiptList


 940616



 [REMOTE]:PicassoJSObject解析失败[source:picasso_order_times_submit_card_module, line:1, column:4129]：ReferenceError: Can't find variable: Object

[REMOTE]:PicassoJSObject解析失败[source:picassovcview_cashier_shop_card_cell, line:1, column:170]：ReferenceError: Can't find variable: Object


PoiModelPicasso.ts
picasso_edu_address_phone_modules.ts
picasso_deallist_richbutton_modules.ts
picasso_medicine_takeaway_module.ts
picasso_platform_poi_gc_address_module.ts
picasso_shopping_shopping_activity_selected_module.ts

你好，这个接口：http://home.mobile.sankuai.com/api/5556/detail.html，美团使用的时候 经纬度是 WGS84 坐标，还是 火星坐标 ？


npm install --save @dp/cnb-knb@0.1.0



currentContentNaviNodes




 
PicassoModuleView
   -> PicassoModuleViewPVCView
          -> PicassoView
              -> PicassoGCNaview

 

npm install --save @dp/picasso@1.0.24

npm install --save @dp/picasso-module@0.9.6

npm install --save @dp/picasso-appid@0.0.2
npm install --save @dp/picasso-utility@0.1.6
npm install --save @dp/picasso-bridges@1.0.12



大图 ： frontImg
彩虹大促图片：mtActivityTag
活动: purchaseItemModel
标题: title
ICONS： icons
放心商家：poiFeatureInfo
评分：avgScore
人均: poiConsumeStr
类目：cateName
商圈：areaName
标签：poiFeatureLabels



 

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return ((self.currentUIType == GCViewItemListMerchantSectionItemUITypePure || self.index == 0) ? 0.f : 10.f);
}

- (BOOL)hasHeaderCellForSection:(NSInteger)section {
    return (self.currentUIType == GCViewItemListMerchantSectionItemUITypeEight && section == 0);
}

//- (UITableViewCell *)headerCellForSection:(NSInteger)section {
//    UITableViewCell *cell = [UITableViewCell new];
//    cell.contentView.backgroundColor = [UIColor clearColor];
//    return cell;
//}

- (CGFloat)heightForHeaderCellForSection:(NSInteger)section {
    return (self.currentUIType == GCViewItemListMerchantSectionItemUITypeEight && section == 0) ? 10.f : 0.f;
}



【慈铭体检】感谢您到慈铭体检，报告查询方式：1.登录：book.ciming.com 查询码:[000300418042467940]，密码:[275094] 2.下载APP，历次报告随时查看永久保存，专家深度解读报告，咨询：4008905886，下载地址http://t.cn/RGn1KQh




resultLest重写
makeupSectionItem 



//        gcViewController.view.frame = CGRectMake(navigationController.view.left, self.view.top, navigationController.view.width, 1.f);




?serverip=172.22.226.210&serverport=6969

上半年，完成每个版本业务需求的迭代，但缺少从繁忙的业务需求开发中提炼经验，希望下半年进行改进。
目前客户端主要使用Picasso，所以希望下阶段，多能参与Picasso工具链的开发；多总结工作经验，提高工作效率。

能较好完成常规需求迭代。
认真调研总结了voip相关技术。
但对设计编码精益求精的态度精神还稍有欠缺，缺乏一些技术信心。
希望后续可以多研究复杂底层设计，进一步提高自身设计能力和技术信心，承担团队更多的职责。


来到美团点评将近半年的时间，感受到团队的精益求精，受益良多。在后面迭代业务需求较多的时候没有能分配好时间导致做事效率低乱。
下阶段自己要多学习提高自己，并以Picasso为契机扩展自己前端的技能树，希望能够在做好业务需求的同时，多能参与一些通用组件的开发以及工具的开发。

能认真完成业务需求。
但在工具类和框架建设相关思考较少。

工作内容：美团与点评教培频道的需求开发
职责：开发

   


工作内容：美团与点评家装频道的需求开发
职责：开发


工作内容：美团与点评个人中心的团购需求开发
职责：开发
主要成果：完成订单详情，退款相关的业务需求开发；以及组件的迁移改造


1：认真负责完成几个业务线的需求开发；并学习使用Picasso；入职以来无线上bug发生；并且发现以前的代码有不合理的地方及时修改，抽取成双端模块，减少维护成本。
2：完成了GCBaseComponents，GCComponents等的动态库改造。
3：图文混排编辑器以及图片上传公用组件的开发。
4：学习并掌握Picasso扩展自己的知识技能。
5：团队成员比较认真负责，精益求精这也是我收获最大的；下一步在完成业务需求的同时，思考工具类或组件的开发，学习和提高自己的技能和效率。
6：业务线多，工作任务重的时候，划分任务轻重缓急，并制定每天的开发任务，保证迭代任务的完成。






工作内容：


对公司的价值贡献：

主要参与：美团与点评：家装频道，教育频道，团购个人中心，美团筛选列表页，以及客满满HD，等的维护与开发。以及参与建设Picasso组件的开发。
稳定并改善所负责业务线的代码质量，提高产出质量




1：参与或者复杂的业务线比较多，产品需求的多样性也比较多，
2：人际沟通，最多涉及到深圳的SAAS团队，
3：每个业务都较为独立，需要能够



业绩贡献：

1：完成所负责几个业务线的需求开发；发现以前的代码有不合理的地方及时修改，抽取成双端模块，减少维护成本。提示业务线代码的质量。
2：完成了GCBaseComponents，GCComponents等的动态库改造。
3：图文混排编辑器以及图片上传公用组件的开发。
4：学习并扩充Picasso的相关组件，让Picasso更好的适应业务，更好完成产品需求。
5：点评V10效果，刷新及Loading效果框架层改版
6：


个人工作的收获与总结：

1：团队成员比较认真负责，精益求精这也是我收获最大的；下一步在完成业务需求的同时，思考工具类或组件的开发，学习和提高自己的技能和效率。
2：业务线多，工作任务重的时候，以后要能从繁忙的业务需求开发中提炼经验，提高工作效率。
3：由于Picasso可以随时发版，以及开发成本低等特点，下一步计划把目前不能用Picasso开发的业务场景(如：UGC，美团筛选列表页)，用Picasso打通，目前已经在做
4：希望多研究复杂底层设计，进一步提高自身设计能力和技术信心，承担团队更多的职责。




项目经历


 

成果：
1：完教育版本迭代的需求开发，提高业务代码质量，重构了以前不合理的代码
2：适应公司技术栈，将家装需求主要使用Picasso，减少开发及维护成本
3：协助产品梳理商详页教培模块打点，解决以前上报不规范或者字段缺失的问题。
4：完成图文混排编辑器的开发，并且开发时作为了通用组件，没有耦合业务代码。


成果：
1：完成产品需求，提高业务代码质量，重构了以前不合理的代码
2：适应公司技术栈，将家装需求主要使用Picasso，减少开发及维护成本
3：协助产品梳理所有家装模块的打点，解决以前上报不规范或者字段缺失的问题。
4：配合解决家装签约用户评论的课诉问题。

 
成果：
1：完成订单详情，退款相关的业务需求开发。
2：组件的迁移改造。
3：orderId的64位升级改造


1：完成美团筛选列表页的需求开发；
2：计划用Picasso重写列表页，目前已经启动，在做基础工作，预计10月份完成




## 

点评V10的刷新效果改版




主要工作Picasso的桥接

1：列表页筛选框的Picasso适配
2：Picasso模块键盘事件的滚动
3：Picasso弹框页面的动态高度
4：美团筛选列表页Picasso重做

能较好完成常规需求迭代。
认真调研总结了voip相关技术。
但对设计编码精益求精的态度精神还稍有欠缺，缺乏一些技术信心。
希望后续可以多研究复杂底层设计，进一步提高自身设计能力和技术信心，承担团队更多的职责。




-------------
 
--------------------20181211------------------

1: 注册Picasso侧输入框的键盘滚动事件
2：Picasso弹框页面键盘遮挡处理
3：Picasso滚动moduleEvents添加结束回调
4：对接Native侧的Navi筛选组件到Picasso
5：添加相册选择页面及对接Picasso添加了相册选择桥
6：添加图片上传美团云的Picasso桥
7：对Picaso的弹框页面，添加动态高度，可根据弹框内容页面高度自适应
8：建立kmm-components仓库，针对客满满（Phone和HD）业务抽取公用的Picasso组件，方便复用


客满满
1：给客满满Phone添加支持Picasso模块化
2：客满满Phone和HD添加Debug的清理Picasso缓存入口，方便调试
3：客满满Phone需求1.0到1.3版本
4：客满满HD版本添加几个Picasso开发中需要调用到的桥
5：客满满HD添加验签功能，接入MTGuard和MTProtect



个人总结
1：由点评美团的需求逐渐偏向于客满满Phone和HD的需求，
2：逐步解决开发中碰到的问题，以实际需求为向导来解决实际问题，如Picasso输入框的键盘注册，以及弹框页面的自适应大小
3：逐步完善客满满Phone和HD基础工程能力，给客满满引入p-cache解决测试环境js下发的问题，方便调试定位问题
4：指出客满满HD当前网络失败方案的问题，并和深圳探寻更好的解决方案
5：在客满满HD收银台，价目表和会员中心的开发中逐步抽取公用组件，并建立kmm-components仓库，方便组件复用，避免重复造轮子及拷贝代码
6：推动UGC进行点评评论动态化的改进，方便到综UGC的需求可以使用Picasso等开发

不足和计划
1：目前参与的业务线较多，需求杂，以后能提高工作效率，多进行技术总结及沉淀
2：继续完善客满满Phone和HD的基础工程的功能建设
3：希望以后能在客满满Phone和HD中承担更多的团队职责
4：下一阶段继续以客满满Phone和HD为工作重心，开发需求，解决实际问题，提升开发质量
5：目前平台引入了MRN，希望以此为契机能参与完善相关工具及开发生态


-




gem sources --add https://gems.ruby-china.com/











单个commit只需要git cherry-pick commitid

多个commit 只需要git cherry-pick commitid1..commitid100






git cherry-pick



 PM_ModulesVCSettingInfo


两个对象关系

disableTabHover
enableHover  //TS


问题 3：
shouldshow 也要改为NO
alwawysHover也要跟着 showload 为NO的进行移除
cgrect要进行保护



        
//        self.isSearching = keyword.length > 0;
//        [self needUpdateModules];
        
//        self.resultVC.priceHomeSearchKeyword = keyword;
//
//        if (keyword.length > 0 && !self.isAddChildVc) {
//            self.isAddChildVc = YES;
//            [self addChildViewController:self.resultVC];
//            [self.view addSubview:self.resultVC.view];
//            [self.resultVC didMoveToParentViewController:self];
//            self.resultVC.view.frame = CGRectMake(0.f, 86.f, self.view.frame.size.width, self.view.frame.size.height);
//        } else if (keyword.length == 0 && self.isAddChildVc){
//            self.isAddChildVc = NO;
//            [self.resultVC willMoveToParentViewController:nil];
//            [self.resultVC.view removeFromSuperview];
//            [self.resultVC removeFromParentViewController];
//        }


原休娱。列表页模块：picasso_joy_home_shop_list_module


    export interface PM_TabCellInfo extends PM_CellInfo, PM_TabInfo, PM_HoverInfo {
        type: PM_cellType.Tab;
        buttonTitles?: string[];
        initialSelectedIndex?: number;
        enableHover?: boolean;
    }



GCDynamicModuleTabModuleInfoProtocol

@property (readonly, nonatomic) NSNumber *gdm_tabModuleInfo_enableHover;


- (NSNumber *)gdm_tabModuleInfo_enableHover {
    return self[@"enableHover"];
}







NVModelBaseShopModel


GCMerchant

//    self.disableTabHover = ![moduleInfo.gdm_tabModuleInfo_enableHover boolValue];





dianping://skulist?bizname=decomaterial&shopid=17661020&items=476



imeituan://www.meituan.com/gc/skulist?bizname=decomaterial&shopid=17661020&items=476



    pod 'PicassoModule', '0.13.18'

    pod 'yoga', '0.54.3.1'


    pod 'SAKUIKit', '2.0.14',                :inhibit_warnings => true







    pod 'yoga', '0.54.3.1'


        
        // 移走上一个节点
        [self.searchItemsArray enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
        }];
        



                    "Subs": null,
                    "Count#I": 0,
                    "Selected": false,
                    "ID#I": 463,
                    "TypeExtra": "sort",
                    "SubLayout#I": 0

                        "typeExtra": "filter",
                        "subLayout": 6,
                        "count": 0,
                        "selected": false,
                        "name": "全部空间",
                        "id": 2434







Picasso的筛选Navi用Hover做












-    _labelForAdvert.textColor = [UIColor colorWithRed:255 green:255 blue:255 alpha:0.6];
+    _labelForAdvert.textColor = [UIColor nvColorWithHexString:@"#99FFFFFF"];



MemberCardHelper




Printing description of $18:
<KMMNavigationController: 0x7fa63902b800>
Printing description of $19:
<KMMNavigationController: 0x7fa6350e8000>






门店承诺:poiFeatureLabels   
人均:poiConsumeStr




租赁合同的网签：962269

1：网签合同原价
房产证原件，复印件，





export PATH=/Users/fengtf/Desktop/flutter/bin:$PATH




13120605999


    pod 'PicassoClient', ' 0.2.41'
        pod 'PicassoCache', '0.2.19'


# phone

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




# PAD


pod 'BaseModel', :path => "../../basemodel/BaseModel.podspec"
pod 'GCBaseModule', :path => "../../GCBaseModule/GCBaseModule.podspec"
pod 'BaseModule', :path => "../../basemodule/BaseModule.podspec"

pod 'Picasso', :path => "../../picasso/Picasso.podspec"
pod 'PicassoModule', :path => "../../picassomodule/PicassoModule.podspec"
pod 'GCBaseComponents', :path => "../../GCBaseComponents/GCBaseComponents.podspec"
# pod 'PicassoKMMMappingFiles', :path => "../../picassomappingfiles/PicassoKMMMappingFiles.podspec"
# pod 'KMMBaseComponents', :path => "../../KMMBaseComponents/KMMBaseComponents.podspec"
# pod 'KMMService', :path => "../../KMMService/KMMService.podspec"
pod 'NVLayout', :path => "../../nvlayout/NVLayout.podspec"
# pod 'CIPFoundation', :path => "../../cipfoundation/CIPFoundation.podspec"


pod 'PicassoClient', :path => "../../picassoclient/PicassoClient.podspec"
pod 'PicassoCache', :path => "../../picassocache/PicassoCache.podspec"











ShadowsocksX-NG-R8
Reveal
SourceTree
Sublime Text
Visual Studio Code
OmniDiskSweeper
MindNode
InjectionIII
Dash
ColorSnapper2
Alfred 3

Bartender 3















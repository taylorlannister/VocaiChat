vocai sdk 接入文档
1. 添加依赖
在需要使用本项目的工程中把VocalWebcomponent.framework 拖到工程下面。 效果如下：
2. 设置frameWork的ember模式：需要在工程的General  下找到Frame 的设置。 将我们的frame设置成Embed & Sign
3. 导入框架内头文件： #import "VocalWebcomponent/VocaiChatModel.h"
                   #import "VocalWebcomponent/VocaiSdkBuilder.h"

4. 构建初始化模型:
NSDictionary *exampleOtherDict = @{@"value":@"october"};
    VocaiChatModel *vocaiModel = [[VocaiChatModel alloc] initWithId:@"240b5da2-c488-4725-9e7b-62bf976413af"
                                                              token:@"6731F71BE4B0187458389512"
                                                     webViewAddress:@"https://apps.voc.ai/live-chat"
                                                          uploadUrl:@"https://apps.voc.ai/api_v2/intelli/resource/upload/lead"
                                                              email:@"zhikang@163.com"
                                                              botId:@"19365"
                                                           language:@"cn"
                                                    otherParams:exampleOtherDict];

   
5. 初始化模型以及调用返回的ViewController
 [VocaiSdkBuilder buildSdkWithParams: vocaiModel];


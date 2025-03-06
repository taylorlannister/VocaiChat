//
//  SceneDelegate.m
//  VocaiDemoApp
//
//  Created by 刘志康 on 2025/3/4.
//

#import "SceneDelegate.h"

#import "VocalWebcomponent/VocaiChatModel.h"
#import "VocalWebcomponent/VocaiSdkBuilder.h"


@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    if (![scene isKindOfClass:[UIWindowScene class]]) return;
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    // 创建自定义视图控制器实例
    NSDictionary *exampleOtherDict = @{@"value":@"october"};
    VocaiChatModel *vocaiModel = [[VocaiChatModel alloc] initWithId:@"240b5da2-c488-4725-9e7b-62bf976413af"
                                                              token:@"6731F71BE4B0187458389512"
                                                     webViewAddress:@"https://apps.voc.ai/live-chat"
                                                          uploadUrl:@"https://apps.voc.ai/api_v2/intelli/resource/upload/lead"
                                                              email:@"zhikang@163.com"
                                                              botId:@"19365"
                                                           language:@"cn"
                                                    otherParams:exampleOtherDict];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController: [VocaiSdkBuilder buildSdkWithParams: vocaiModel]];
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end

//
//  main.m
//  Command
//
//  Created by Vic Wan on 2018/12/2.
//  Copyright © 2018 Vic Wan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RemoteController.h"

// import commands
#import "Command/MacroCommand.h"
#import "Command/LightOnCommand.h"
#import "Command/LightOffCommand.h"
#import "Command/StereoOnCommand.h"
#import "Command/StereoOffCommand.h"

// import receivers
#import "Receiver/Light.h"
#import "Receiver/Stereo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        RemoteController *remote = [[RemoteController alloc] init];
        
        // Receivers
        Light *light = [[Light alloc] init];
        Stereo *stereo = [[Stereo alloc] init];
        
        // Commands
        LightOnCommand *lightOnCmd = [[LightOnCommand alloc] initWithLight:light];
        LightOffCommand *lightOffCmd = [[LightOffCommand alloc] initWithLight:light];
        
        StereoOnCommand *stereoOnCmd = [[StereoOnCommand alloc] initWithStereo:stereo];
        StereoOffCommand *stereoOffCmd = [[StereoOffCommand alloc] initWithStereo:stereo];
        
        MacroCommand *partyOnCmd = [[MacroCommand alloc] initWithCommands:@[lightOnCmd, stereoOnCmd]];
        MacroCommand *partyOffCmd = [[MacroCommand alloc] initWithCommands:@[lightOffCmd, stereoOffCmd]];
        
        // Set commands
//        [remote setCommand:RemoteControllerLight onCommand:lightOnCmd offCommand:lightOffCmd];
//        [remote onButtonWasPressed:RemoteControllerLight];
//        [remote offButtonWasPressed:RemoteControllerLight];
        [remote setCommand:RemoteControllerParty onCommand:partyOnCmd offCommand:partyOffCmd];
        [remote onButtonWasPressed:RemoteControllerParty];
        
        [remote undo];
        [remote undo];
    }
    return 0;
}

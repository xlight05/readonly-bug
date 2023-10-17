// // Copyright (c) 2021, WSO2 Inc. (http://www.wso2.com). All Rights Reserved.
// //
// // This software is the property of WSO2 Inc. and its suppliers, if any.
// // Dissemination of any information or reproduction of any material contained
// // herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
// // You may not alter or remove any copyright or other notice from copies of this content.
import ballerina/io;

import wso2/lock_debug.com.utils;
public readonly class Version {
    final utils:Version1 internalVersion;

    public isolated function init(string name) {
        self.internalVersion = utils:getInst(name);
    }

    public isolated function getName() returns string {
        // utils:Version1 ver = self.internalVersion;
        // return ver.getName();
        return self.internalVersion.getName();
    }
}

public function main() {
    Version ve = new Version("1.0.0");
    io:println(ve.getName());
}


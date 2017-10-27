//
//  Package.swift
//  PerfectHTTPServer
//
//  Created by Kyle Jessup on 2016-05-02.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	targets: [
		Target(name: "PerfectCHTTPParser", dependencies: []),
		Target(name: "PerfectCZlib", dependencies: []),
		Target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectCZlib"])
	],
	dependencies: [
		.Package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", majorVersion: 99),
		.Package(url: "https://github.com/PerfectlySoft/Perfect-HTTP.git", majorVersion: 99)
	],
	exclude: ["Sources/PerfectCZlib/examples", "Sources/PerfectCZlib/test", "Sources/PerfectCZlib/contrib"]
)

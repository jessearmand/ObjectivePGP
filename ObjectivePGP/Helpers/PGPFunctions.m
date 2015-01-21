//
//  PGPFunctions.m
//  ObjectivePGP
//
//  Created by Marcin Krzyzanowski on 21/01/15.
//  Copyright (c) 2015 Marcin Krzyżanowski. All rights reserved.
//

#import "PGPFunctions.h"
#import <CommonCrypto/CommonDigest.h>

UInt8 *pgpCalculateSHA512(const void *bytes, unsigned int length)
{
    unsigned char hash[CC_SHA512_DIGEST_LENGTH];
    return CC_SHA512(bytes, length, hash);
}

UInt8 *pgpCalculateSHA384(const void *bytes, unsigned int length)
{
    unsigned char hash[CC_SHA384_DIGEST_LENGTH];
    return CC_SHA384(bytes, length, hash);
}

UInt8 *pgpCalculateSHA256(const void *bytes, unsigned int length)
{
    unsigned char hash[CC_SHA256_DIGEST_LENGTH];
    return CC_SHA256(bytes, length, hash);
}

UInt8 *pgpCalculateSHA224(const void *bytes, unsigned int length)
{
    unsigned char hash[CC_SHA224_DIGEST_LENGTH];
    return CC_SHA224(bytes, length, hash);
}

UInt8 *pgpCalculateSHA1(const void *bytes, unsigned int length)
{
    unsigned char hash[CC_SHA1_DIGEST_LENGTH];
    return CC_SHA1(bytes, length, hash);
}

UInt8 *pgpCalculateMD5(const void *bytes, unsigned int length)
{
    unsigned char hash[CC_MD5_DIGEST_LENGTH];
    return CC_MD5(bytes, length, hash);
}
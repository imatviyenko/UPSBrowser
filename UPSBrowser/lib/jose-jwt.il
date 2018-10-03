
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.module extern bcrypt.dll
.module extern ncrypt.dll
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Core
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Web.Extensions
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 4:0:0:0
}
.assembly 'jose-jwt'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 32 2E 34 2E 30 00 00 )                   // ...2.4.0..
  .custom instance void [mscorlib]System.Resources.NeutralResourcesLanguageAttribute::.ctor(string) = ( 01 00 05 65 6E 2D 55 53 00 00 )                   // ...en-US..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 00 00 )    // ,Version=v4.0..
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 08 6A 6F 73 65 2D 6A 77 74 00 00 )          // ...jose-jwt..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 49 55 6C 74 69 6D 61 74 65 20 4A 61 76 61   // ..IUltimate Java
                                                                                                    20 4F 62 6A 65 63 74 20 53 69 67 6E 69 6E 67 20   //  Object Signing 
                                                                                                    61 6E 64 20 4A 77 65 20 69 6D 70 6C 65 6D 65 6E   // and Jwe implemen
                                                                                                    74 61 74 69 6F 6E 20 66 6F 72 20 2E 4E 45 54 20   // tation for .NET 
                                                                                                    61 6E 64 20 2E 4E 45 54 43 4F 52 45 00 00 )       // and .NETCORE..
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0C 64 76 73 65 6B 68 76 61 6C 6E 6F 76 00   // ...dvsekhvalnov.
                                                                                                00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 08 6A 6F 73 65 2D 6A 77 74 00 00 )          // ...jose-jwt..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 0C 64 76 73 65 6B 68 76 61 6C 6E 6F 76 00   // ...dvsekhvalnov.
                                                                                                  00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 32 2E 34 2E 30 2E 30 00 00 )             // ...2.4.0.0..
  .hash algorithm 0x00008004
  .ver 2:4:0:0
}
.module 'jose-jwt.dll'
// MVID: {AAE114EF-C1B7-4200-AB90-E44D47BF2EAC}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x011F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Security.Cryptography.EccKey
       extends [mscorlib]System.Object
{
  .field public static initonly uint8[] BCRYPT_ECDSA_PUBLIC_P256_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDSA_PRIVATE_P256_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDSA_PUBLIC_P384_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDSA_PRIVATE_P384_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDSA_PUBLIC_P521_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDSA_PRIVATE_P521_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDH_PUBLIC_P256_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDH_PRIVATE_P256_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDH_PUBLIC_P384_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDH_PRIVATE_P384_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDH_PUBLIC_P521_MAGIC
  .field public static initonly uint8[] BCRYPT_ECDH_PRIVATE_P521_MAGIC
  .field private class [System.Core]System.Security.Cryptography.CngKey key
  .field private uint8[] x
  .field private uint8[] y
  .field private uint8[] d
  .method public hidebysig specialname instance uint8[] 
          get_X() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8[] Security.Cryptography.EccKey::x
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Security.Cryptography.EccKey::ExportKey()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      uint8[] Security.Cryptography.EccKey::x
    IL_0014:  ret
  } // end of method EccKey::get_X

  .method public hidebysig specialname instance uint8[] 
          get_Y() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8[] Security.Cryptography.EccKey::y
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Security.Cryptography.EccKey::ExportKey()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      uint8[] Security.Cryptography.EccKey::y
    IL_0014:  ret
  } // end of method EccKey::get_Y

  .method public hidebysig specialname instance uint8[] 
          get_D() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8[] Security.Cryptography.EccKey::d
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Security.Cryptography.EccKey::ExportKey()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      uint8[] Security.Cryptography.EccKey::d
    IL_0014:  ret
  } // end of method EccKey::get_D

  .method public hidebysig specialname instance class [System.Core]System.Security.Cryptography.CngKey 
          get_Key() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::key
    IL_0006:  ret
  } // end of method EccKey::get_Key

  .method public hidebysig static class [System.Core]System.Security.Cryptography.CngKey 
          New(uint8[] x,
              uint8[] y,
              [opt] uint8[] d,
              [opt] valuetype [System.Core]System.Security.Cryptography.CngKeyUsages usage) cil managed
  {
    .param [3] = nullref
    .param [4] = int32(0x00000002)
    // Code size       307 (0x133)
    .maxstack  4
    .locals init (bool V_0,
             int32 V_1,
             uint8[] V_2,
             uint8[] V_3,
             class [System.Core]System.Security.Cryptography.CngKeyBlobFormat V_4,
             uint8[] V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  ldarg.1
    IL_0004:  ldlen
    IL_0005:  conv.i4
    IL_0006:  beq.s      IL_0013

    IL_0008:  ldstr      "X,Y and D must be same size"
    IL_000d:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0012:  throw

    IL_0013:  ldarg.2
    IL_0014:  brfalse.s  IL_0029

    IL_0016:  ldarg.0
    IL_0017:  ldlen
    IL_0018:  conv.i4
    IL_0019:  ldarg.2
    IL_001a:  ldlen
    IL_001b:  conv.i4
    IL_001c:  beq.s      IL_0029

    IL_001e:  ldstr      "X,Y and D must be same size"
    IL_0023:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0028:  throw

    IL_0029:  ldarg.3
    IL_002a:  ldc.i4.2
    IL_002b:  beq.s      IL_003c

    IL_002d:  ldarg.3
    IL_002e:  ldc.i4.4
    IL_002f:  beq.s      IL_003c

    IL_0031:  ldstr      "Usage parameter expected to be set either 'CngKeyU"
    + "sages.Signing' or 'CngKeyUsages.KeyAgreement"
    IL_0036:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_003b:  throw

    IL_003c:  ldarg.3
    IL_003d:  ldc.i4.2
    IL_003e:  ceq
    IL_0040:  stloc.0
    IL_0041:  ldarg.0
    IL_0042:  ldlen
    IL_0043:  conv.i4
    IL_0044:  stloc.1
    IL_0045:  ldloc.1
    IL_0046:  ldc.i4.s   32
    IL_0048:  bne.un.s   IL_0070

    IL_004a:  ldarg.2
    IL_004b:  brfalse.s  IL_005e

    IL_004d:  ldloc.0
    IL_004e:  brtrue.s   IL_0057

    IL_0050:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PRIVATE_P256_MAGIC
    IL_0055:  br.s       IL_006d

    IL_0057:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PRIVATE_P256_MAGIC
    IL_005c:  br.s       IL_006d

    IL_005e:  ldloc.0
    IL_005f:  brtrue.s   IL_0068

    IL_0061:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PUBLIC_P256_MAGIC
    IL_0066:  br.s       IL_006d

    IL_0068:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PUBLIC_P256_MAGIC
    IL_006d:  stloc.2
    IL_006e:  br.s       IL_00d1

    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.s   48
    IL_0073:  bne.un.s   IL_009b

    IL_0075:  ldarg.2
    IL_0076:  brfalse.s  IL_0089

    IL_0078:  ldloc.0
    IL_0079:  brtrue.s   IL_0082

    IL_007b:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PRIVATE_P384_MAGIC
    IL_0080:  br.s       IL_0098

    IL_0082:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PRIVATE_P384_MAGIC
    IL_0087:  br.s       IL_0098

    IL_0089:  ldloc.0
    IL_008a:  brtrue.s   IL_0093

    IL_008c:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PUBLIC_P384_MAGIC
    IL_0091:  br.s       IL_0098

    IL_0093:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PUBLIC_P384_MAGIC
    IL_0098:  stloc.2
    IL_0099:  br.s       IL_00d1

    IL_009b:  ldloc.1
    IL_009c:  ldc.i4.s   66
    IL_009e:  bne.un.s   IL_00c6

    IL_00a0:  ldarg.2
    IL_00a1:  brfalse.s  IL_00b4

    IL_00a3:  ldloc.0
    IL_00a4:  brtrue.s   IL_00ad

    IL_00a6:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PRIVATE_P521_MAGIC
    IL_00ab:  br.s       IL_00c3

    IL_00ad:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PRIVATE_P521_MAGIC
    IL_00b2:  br.s       IL_00c3

    IL_00b4:  ldloc.0
    IL_00b5:  brtrue.s   IL_00be

    IL_00b7:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PUBLIC_P521_MAGIC
    IL_00bc:  br.s       IL_00c3

    IL_00be:  ldsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PUBLIC_P521_MAGIC
    IL_00c3:  stloc.2
    IL_00c4:  br.s       IL_00d1

    IL_00c6:  ldstr      "Size of X,Y or D must equal to 32, 48 or 66 bytes"
    IL_00cb:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_00d0:  throw

    IL_00d1:  ldloc.1
    IL_00d2:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_00d7:  stloc.3
    IL_00d8:  ldarg.2
    IL_00d9:  brtrue.s   IL_0101

    IL_00db:  ldc.i4.4
    IL_00dc:  newarr     uint8[]
    IL_00e1:  dup
    IL_00e2:  ldc.i4.0
    IL_00e3:  ldloc.2
    IL_00e4:  stelem.ref
    IL_00e5:  dup
    IL_00e6:  ldc.i4.1
    IL_00e7:  ldloc.3
    IL_00e8:  stelem.ref
    IL_00e9:  dup
    IL_00ea:  ldc.i4.2
    IL_00eb:  ldarg.0
    IL_00ec:  stelem.ref
    IL_00ed:  dup
    IL_00ee:  ldc.i4.3
    IL_00ef:  ldarg.1
    IL_00f0:  stelem.ref
    IL_00f1:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_00f6:  stloc.s    V_5
    IL_00f8:  call       class [System.Core]System.Security.Cryptography.CngKeyBlobFormat [System.Core]System.Security.Cryptography.CngKeyBlobFormat::get_EccPublicBlob()
    IL_00fd:  stloc.s    V_4
    IL_00ff:  br.s       IL_0129

    IL_0101:  ldc.i4.5
    IL_0102:  newarr     uint8[]
    IL_0107:  dup
    IL_0108:  ldc.i4.0
    IL_0109:  ldloc.2
    IL_010a:  stelem.ref
    IL_010b:  dup
    IL_010c:  ldc.i4.1
    IL_010d:  ldloc.3
    IL_010e:  stelem.ref
    IL_010f:  dup
    IL_0110:  ldc.i4.2
    IL_0111:  ldarg.0
    IL_0112:  stelem.ref
    IL_0113:  dup
    IL_0114:  ldc.i4.3
    IL_0115:  ldarg.1
    IL_0116:  stelem.ref
    IL_0117:  dup
    IL_0118:  ldc.i4.4
    IL_0119:  ldarg.2
    IL_011a:  stelem.ref
    IL_011b:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_0120:  stloc.s    V_5
    IL_0122:  call       class [System.Core]System.Security.Cryptography.CngKeyBlobFormat [System.Core]System.Security.Cryptography.CngKeyBlobFormat::get_EccPrivateBlob()
    IL_0127:  stloc.s    V_4
    IL_0129:  ldloc.s    V_5
    IL_012b:  ldloc.s    V_4
    IL_012d:  call       class [System.Core]System.Security.Cryptography.CngKey [System.Core]System.Security.Cryptography.CngKey::Import(uint8[],
                                                                                                                                         class [System.Core]System.Security.Cryptography.CngKeyBlobFormat)
    IL_0132:  ret
  } // end of method EccKey::New

  .method public hidebysig static class Security.Cryptography.EccKey 
          Generate(class [System.Core]System.Security.Cryptography.CngKey recieverPubKey) cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  5
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0)
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngKey::get_Algorithm()
    IL_0006:  ldnull
    IL_0007:  newobj     instance void [System.Core]System.Security.Cryptography.CngKeyCreationParameters::.ctor()
    IL_000c:  dup
    IL_000d:  ldc.i4.2
    IL_000e:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype [System.Core]System.Security.Cryptography.CngExportPolicies>::.ctor(!0)
    IL_0013:  callvirt   instance void [System.Core]System.Security.Cryptography.CngKeyCreationParameters::set_ExportPolicy(valuetype [mscorlib]System.Nullable`1<valuetype [System.Core]System.Security.Cryptography.CngExportPolicies>)
    IL_0018:  call       class [System.Core]System.Security.Cryptography.CngKey [System.Core]System.Security.Cryptography.CngKey::Create(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                                                         string,
                                                                                                                                         class [System.Core]System.Security.Cryptography.CngKeyCreationParameters)
    IL_001d:  stloc.0
    IL_001e:  newobj     instance void Security.Cryptography.EccKey::.ctor()
    IL_0023:  dup
    IL_0024:  ldloc.0
    IL_0025:  stfld      class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::key
    IL_002a:  ret
  } // end of method EccKey::Generate

  .method public hidebysig static class Security.Cryptography.EccKey 
          Export(class [System.Core]System.Security.Cryptography.CngKey _key) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  newobj     instance void Security.Cryptography.EccKey::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::key
    IL_000c:  ret
  } // end of method EccKey::Export

  .method private hidebysig instance void 
          ExportKey() cil managed
  {
    // Code size       99 (0x63)
    .maxstack  5
    .locals init (uint8[] V_0,
             int32 V_1,
             uint8[][] V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::key
    IL_0006:  call       class [System.Core]System.Security.Cryptography.CngKeyBlobFormat [System.Core]System.Security.Cryptography.CngKeyBlobFormat::get_EccPrivateBlob()
    IL_000b:  callvirt   instance uint8[] [System.Core]System.Security.Cryptography.CngKey::Export(class [System.Core]System.Security.Cryptography.CngKeyBlobFormat)
    IL_0010:  stloc.0
    IL_0011:  ldc.i4.4
    IL_0012:  newarr     [mscorlib]System.Byte
    IL_0017:  dup
    IL_0018:  ldc.i4.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.4
    IL_001b:  ldelem.u1
    IL_001c:  stelem.i1
    IL_001d:  dup
    IL_001e:  ldc.i4.1
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.5
    IL_0021:  ldelem.u1
    IL_0022:  stelem.i1
    IL_0023:  dup
    IL_0024:  ldc.i4.2
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.6
    IL_0027:  ldelem.u1
    IL_0028:  stelem.i1
    IL_0029:  dup
    IL_002a:  ldc.i4.3
    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.7
    IL_002d:  ldelem.u1
    IL_002e:  stelem.i1
    IL_002f:  ldc.i4.0
    IL_0030:  call       int32 [mscorlib]System.BitConverter::ToInt32(uint8[],
                                                                      int32)
    IL_0035:  stloc.1
    IL_0036:  ldloc.0
    IL_0037:  ldloc.1
    IL_0038:  ldc.i4.s   24
    IL_003a:  mul
    IL_003b:  call       uint8[] Jose.Arrays::RightmostBits(uint8[],
                                                            int32)
    IL_0040:  ldloc.1
    IL_0041:  call       uint8[][] Jose.Arrays::Slice(uint8[],
                                                      int32)
    IL_0046:  stloc.2
    IL_0047:  ldarg.0
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.0
    IL_004a:  ldelem.ref
    IL_004b:  stfld      uint8[] Security.Cryptography.EccKey::x
    IL_0050:  ldarg.0
    IL_0051:  ldloc.2
    IL_0052:  ldc.i4.1
    IL_0053:  ldelem.ref
    IL_0054:  stfld      uint8[] Security.Cryptography.EccKey::y
    IL_0059:  ldarg.0
    IL_005a:  ldloc.2
    IL_005b:  ldc.i4.2
    IL_005c:  ldelem.ref
    IL_005d:  stfld      uint8[] Security.Cryptography.EccKey::d
    IL_0062:  ret
  } // end of method EccKey::ExportKey

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method EccKey::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       181 (0xb5)
    .maxstack  1
    IL_0000:  ldc.i4     0x31534345
    IL_0005:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_000a:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PUBLIC_P256_MAGIC
    IL_000f:  ldc.i4     0x32534345
    IL_0014:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0019:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PRIVATE_P256_MAGIC
    IL_001e:  ldc.i4     0x33534345
    IL_0023:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0028:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PUBLIC_P384_MAGIC
    IL_002d:  ldc.i4     0x34534345
    IL_0032:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0037:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PRIVATE_P384_MAGIC
    IL_003c:  ldc.i4     0x35534345
    IL_0041:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0046:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PUBLIC_P521_MAGIC
    IL_004b:  ldc.i4     0x36534345
    IL_0050:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0055:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDSA_PRIVATE_P521_MAGIC
    IL_005a:  ldc.i4     0x314b4345
    IL_005f:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0064:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PUBLIC_P256_MAGIC
    IL_0069:  ldc.i4     0x324b4345
    IL_006e:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0073:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PRIVATE_P256_MAGIC
    IL_0078:  ldc.i4     0x334b4345
    IL_007d:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0082:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PUBLIC_P384_MAGIC
    IL_0087:  ldc.i4     0x344b4345
    IL_008c:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0091:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PRIVATE_P384_MAGIC
    IL_0096:  ldc.i4     0x354b4345
    IL_009b:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_00a0:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PUBLIC_P521_MAGIC
    IL_00a5:  ldc.i4     0x364b4345
    IL_00aa:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_00af:  stsfld     uint8[] Security.Cryptography.EccKey::BCRYPT_ECDH_PRIVATE_P521_MAGIC
    IL_00b4:  ret
  } // end of method EccKey::.cctor

  .property instance uint8[] X()
  {
    .get instance uint8[] Security.Cryptography.EccKey::get_X()
  } // end of property EccKey::X
  .property instance uint8[] Y()
  {
    .get instance uint8[] Security.Cryptography.EccKey::get_Y()
  } // end of property EccKey::Y
  .property instance uint8[] D()
  {
    .get instance uint8[] Security.Cryptography.EccKey::get_D()
  } // end of property EccKey::D
  .property instance class [System.Core]System.Security.Cryptography.CngKey
          Key()
  {
    .get instance class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::get_Key()
  } // end of property EccKey::Key
} // end of class Security.Cryptography.EccKey

.class public auto ansi beforefieldinit Security.Cryptography.RsaKey
       extends [mscorlib]System.Object
{
  .field public static initonly uint8[] BCRYPT_RSAPUBLIC_MAGIC
  .field public static initonly uint8[] BCRYPT_RSAPRIVATE_MAGIC
  .method public hidebysig static class [System.Core]System.Security.Cryptography.CngKey 
          New(valuetype [mscorlib]System.Security.Cryptography.RSAParameters parameters) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Exponent
    IL_0006:  ldarg.0
    IL_0007:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Modulus
    IL_000c:  ldarg.0
    IL_000d:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::P
    IL_0012:  ldarg.0
    IL_0013:  ldfld      uint8[] [mscorlib]System.Security.Cryptography.RSAParameters::Q
    IL_0018:  call       class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.RsaKey::New(uint8[],
                                                                                                                  uint8[],
                                                                                                                  uint8[],
                                                                                                                  uint8[])
    IL_001d:  ret
  } // end of method RsaKey::New

  .method public hidebysig static class [System.Core]System.Security.Cryptography.CngKey 
          New(uint8[] exponent,
              uint8[] modulus,
              [opt] uint8[] p,
              [opt] uint8[] q) cil managed
  {
    .param [3] = nullref
    .param [4] = nullref
    // Code size       180 (0xb4)
    .maxstack  4
    .locals init (bool V_0,
             uint8[] V_1,
             uint8[] V_2,
             uint8[] V_3,
             uint8[] V_4,
             uint8[] V_5,
             uint8[] V_6,
             class [System.Core]System.Security.Cryptography.CngKeyBlobFormat V_7)
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_0009

    IL_0003:  ldarg.3
    IL_0004:  ldnull
    IL_0005:  ceq
    IL_0007:  br.s       IL_000a

    IL_0009:  ldc.i4.1
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brtrue.s   IL_0015

    IL_000e:  ldsfld     uint8[] Security.Cryptography.RsaKey::BCRYPT_RSAPRIVATE_MAGIC
    IL_0013:  br.s       IL_001a

    IL_0015:  ldsfld     uint8[] Security.Cryptography.RsaKey::BCRYPT_RSAPUBLIC_MAGIC
    IL_001a:  stloc.1
    IL_001b:  ldarg.1
    IL_001c:  ldlen
    IL_001d:  conv.i4
    IL_001e:  ldc.i4.8
    IL_001f:  mul
    IL_0020:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0025:  stloc.2
    IL_0026:  ldarg.0
    IL_0027:  ldlen
    IL_0028:  conv.i4
    IL_0029:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_002e:  stloc.3
    IL_002f:  ldarg.1
    IL_0030:  ldlen
    IL_0031:  conv.i4
    IL_0032:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.0
    IL_003a:  brtrue.s   IL_0046

    IL_003c:  ldarg.2
    IL_003d:  ldlen
    IL_003e:  conv.i4
    IL_003f:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0044:  br.s       IL_004c

    IL_0046:  ldc.i4.0
    IL_0047:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_004c:  stloc.s    V_5
    IL_004e:  ldloc.0
    IL_004f:  brtrue.s   IL_005b

    IL_0051:  ldarg.3
    IL_0052:  ldlen
    IL_0053:  conv.i4
    IL_0054:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0059:  br.s       IL_0061

    IL_005b:  ldc.i4.0
    IL_005c:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0061:  stloc.s    V_6
    IL_0063:  ldc.i4.s   10
    IL_0065:  newarr     uint8[]
    IL_006a:  dup
    IL_006b:  ldc.i4.0
    IL_006c:  ldloc.1
    IL_006d:  stelem.ref
    IL_006e:  dup
    IL_006f:  ldc.i4.1
    IL_0070:  ldloc.2
    IL_0071:  stelem.ref
    IL_0072:  dup
    IL_0073:  ldc.i4.2
    IL_0074:  ldloc.3
    IL_0075:  stelem.ref
    IL_0076:  dup
    IL_0077:  ldc.i4.3
    IL_0078:  ldloc.s    V_4
    IL_007a:  stelem.ref
    IL_007b:  dup
    IL_007c:  ldc.i4.4
    IL_007d:  ldloc.s    V_5
    IL_007f:  stelem.ref
    IL_0080:  dup
    IL_0081:  ldc.i4.5
    IL_0082:  ldloc.s    V_6
    IL_0084:  stelem.ref
    IL_0085:  dup
    IL_0086:  ldc.i4.6
    IL_0087:  ldarg.0
    IL_0088:  stelem.ref
    IL_0089:  dup
    IL_008a:  ldc.i4.7
    IL_008b:  ldarg.1
    IL_008c:  stelem.ref
    IL_008d:  dup
    IL_008e:  ldc.i4.8
    IL_008f:  ldarg.2
    IL_0090:  stelem.ref
    IL_0091:  dup
    IL_0092:  ldc.i4.s   9
    IL_0094:  ldarg.3
    IL_0095:  stelem.ref
    IL_0096:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_009b:  ldloc.0
    IL_009c:  brtrue.s   IL_00a5

    IL_009e:  call       class [System.Core]System.Security.Cryptography.CngKeyBlobFormat [System.Core]System.Security.Cryptography.CngKeyBlobFormat::get_GenericPrivateBlob()
    IL_00a3:  br.s       IL_00aa

    IL_00a5:  call       class [System.Core]System.Security.Cryptography.CngKeyBlobFormat [System.Core]System.Security.Cryptography.CngKeyBlobFormat::get_GenericPublicBlob()
    IL_00aa:  stloc.s    V_7
    IL_00ac:  ldloc.s    V_7
    IL_00ae:  call       class [System.Core]System.Security.Cryptography.CngKey [System.Core]System.Security.Cryptography.CngKey::Import(uint8[],
                                                                                                                                         class [System.Core]System.Security.Cryptography.CngKeyBlobFormat)
    IL_00b3:  ret
  } // end of method RsaKey::New

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method RsaKey::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       31 (0x1f)
    .maxstack  8
    IL_0000:  ldc.i4     0x31415352
    IL_0005:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_000a:  stsfld     uint8[] Security.Cryptography.RsaKey::BCRYPT_RSAPUBLIC_MAGIC
    IL_000f:  ldc.i4     0x32415352
    IL_0014:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_0019:  stsfld     uint8[] Security.Cryptography.RsaKey::BCRYPT_RSAPRIVATE_MAGIC
    IL_001e:  ret
  } // end of method RsaKey::.cctor

} // end of class Security.Cryptography.RsaKey

.class public auto ansi sealed Jose.JwsAlgorithm
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Jose.JwsAlgorithm none = int32(0x00000000)
  .field public static literal valuetype Jose.JwsAlgorithm HS256 = int32(0x00000001)
  .field public static literal valuetype Jose.JwsAlgorithm HS384 = int32(0x00000002)
  .field public static literal valuetype Jose.JwsAlgorithm HS512 = int32(0x00000003)
  .field public static literal valuetype Jose.JwsAlgorithm RS256 = int32(0x00000004)
  .field public static literal valuetype Jose.JwsAlgorithm RS384 = int32(0x00000005)
  .field public static literal valuetype Jose.JwsAlgorithm RS512 = int32(0x00000006)
  .field public static literal valuetype Jose.JwsAlgorithm PS256 = int32(0x00000007)
  .field public static literal valuetype Jose.JwsAlgorithm PS384 = int32(0x00000008)
  .field public static literal valuetype Jose.JwsAlgorithm PS512 = int32(0x00000009)
  .field public static literal valuetype Jose.JwsAlgorithm ES256 = int32(0x0000000A)
  .field public static literal valuetype Jose.JwsAlgorithm ES384 = int32(0x0000000B)
  .field public static literal valuetype Jose.JwsAlgorithm ES512 = int32(0x0000000C)
} // end of class Jose.JwsAlgorithm

.class public auto ansi sealed Jose.JweAlgorithm
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Jose.JweAlgorithm RSA1_5 = int32(0x00000000)
  .field public static literal valuetype Jose.JweAlgorithm RSA_OAEP = int32(0x00000001)
  .field public static literal valuetype Jose.JweAlgorithm RSA_OAEP_256 = int32(0x00000002)
  .field public static literal valuetype Jose.JweAlgorithm DIR = int32(0x00000003)
  .field public static literal valuetype Jose.JweAlgorithm A128KW = int32(0x00000004)
  .field public static literal valuetype Jose.JweAlgorithm A192KW = int32(0x00000005)
  .field public static literal valuetype Jose.JweAlgorithm A256KW = int32(0x00000006)
  .field public static literal valuetype Jose.JweAlgorithm ECDH_ES = int32(0x00000007)
  .field public static literal valuetype Jose.JweAlgorithm ECDH_ES_A128KW = int32(0x00000008)
  .field public static literal valuetype Jose.JweAlgorithm ECDH_ES_A192KW = int32(0x00000009)
  .field public static literal valuetype Jose.JweAlgorithm ECDH_ES_A256KW = int32(0x0000000A)
  .field public static literal valuetype Jose.JweAlgorithm PBES2_HS256_A128KW = int32(0x0000000B)
  .field public static literal valuetype Jose.JweAlgorithm PBES2_HS384_A192KW = int32(0x0000000C)
  .field public static literal valuetype Jose.JweAlgorithm PBES2_HS512_A256KW = int32(0x0000000D)
  .field public static literal valuetype Jose.JweAlgorithm A128GCMKW = int32(0x0000000E)
  .field public static literal valuetype Jose.JweAlgorithm A192GCMKW = int32(0x0000000F)
  .field public static literal valuetype Jose.JweAlgorithm A256GCMKW = int32(0x00000010)
} // end of class Jose.JweAlgorithm

.class public auto ansi sealed Jose.JweEncryption
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Jose.JweEncryption A128CBC_HS256 = int32(0x00000000)
  .field public static literal valuetype Jose.JweEncryption A192CBC_HS384 = int32(0x00000001)
  .field public static literal valuetype Jose.JweEncryption A256CBC_HS512 = int32(0x00000002)
  .field public static literal valuetype Jose.JweEncryption A128GCM = int32(0x00000003)
  .field public static literal valuetype Jose.JweEncryption A192GCM = int32(0x00000004)
  .field public static literal valuetype Jose.JweEncryption A256GCM = int32(0x00000005)
} // end of class Jose.JweEncryption

.class public auto ansi sealed Jose.JweCompression
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Jose.JweCompression DEF = int32(0x00000000)
} // end of class Jose.JweCompression

.class public abstract auto ansi sealed Jose.JWT
       extends [mscorlib]System.Object
{
  .field private static class Jose.JwtSettings defaultSettings
  .method public hidebysig specialname static 
          class Jose.JwtSettings  get_DefaultSettings() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class Jose.JwtSettings Jose.JWT::defaultSettings
    IL_0005:  ret
  } // end of method JWT::get_DefaultSettings

  .method public hidebysig specialname static 
          void  set_JsonMapper(class Jose.IJsonMapper 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldsfld     class Jose.JwtSettings Jose.JWT::defaultSettings
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance class Jose.JwtSettings Jose.JwtSettings::RegisterMapper(class Jose.IJsonMapper)
    IL_000b:  pop
    IL_000c:  ret
  } // end of method JWT::set_JsonMapper

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void Jose.JwtSettings::.ctor()
    IL_0005:  stsfld     class Jose.JwtSettings Jose.JWT::defaultSettings
    IL_000a:  ret
  } // end of method JWT::.cctor

  .method public hidebysig static class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> 
          Headers(string token,
                  [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       !!0 Jose.JWT::Headers<class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>>(string,
                                                                                                                        class Jose.JwtSettings)
    IL_0007:  ret
  } // end of method JWT::Headers

  .method public hidebysig static !!T  Headers<T>(string token,
                                                  [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    // Code size       37 (0x25)
    .maxstack  4
    .locals init (uint8[][] V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       uint8[][] Jose.Compact::Parse(string)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_000d:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_0012:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  ldelem.ref
    IL_001a:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_001f:  callvirt   instance !!0 Jose.IJsonMapper::Parse<!!0>(string)
    IL_0024:  ret
  } // end of method JWT::Headers

  .method public hidebysig static string 
          Payload(string token,
                  [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    // Code size       38 (0x26)
    .maxstack  3
    .locals init (uint8[][] V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       uint8[][] Jose.Compact::Parse(string)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldlen
    IL_0009:  conv.i4
    IL_000a:  ldc.i4.3
    IL_000b:  ble.s      IL_0018

    IL_000d:  ldstr      "Getting payload for encrypted tokens is not suppor"
    + "ted. Please use Jose.JWT.Decode() method instead."
    IL_0012:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_0017:  throw

    IL_0018:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.1
    IL_001f:  ldelem.ref
    IL_0020:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_0025:  ret
  } // end of method JWT::Payload

  .method public hidebysig static uint8[] 
          PayloadBytes(string token,
                       [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    // Code size       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       uint8[][] Jose.Compact::Parse(string)
    IL_0006:  dup
    IL_0007:  ldlen
    IL_0008:  conv.i4
    IL_0009:  ldc.i4.3
    IL_000a:  ble.s      IL_0017

    IL_000c:  ldstr      "Getting payload for encrypted tokens is not suppor"
    + "ted. Please use Jose.JWT.Decode() method instead."
    IL_0011:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_0016:  throw

    IL_0017:  ldc.i4.1
    IL_0018:  ldelem.ref
    IL_0019:  ret
  } // end of method JWT::PayloadBytes

  .method public hidebysig static !!T  Payload<T>(string token,
                                                  [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0006:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_000b:  ldarg.0
    IL_000c:  ldnull
    IL_000d:  call       string Jose.JWT::Payload(string,
                                                  class Jose.JwtSettings)
    IL_0012:  callvirt   instance !!0 Jose.IJsonMapper::Parse<!!0>(string)
    IL_0017:  ret
  } // end of method JWT::Payload

  .method public hidebysig static string 
          Encode(object payload,
                 object key,
                 valuetype Jose.JweAlgorithm alg,
                 valuetype Jose.JweEncryption enc,
                 [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression> compression,
                 [opt] class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> extraHeaders,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    .param [6] = nullref
    .param [7] = nullref
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.s    settings
    IL_0002:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0007:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance string Jose.IJsonMapper::Serialize(object)
    IL_0012:  ldarg.1
    IL_0013:  ldarg.2
    IL_0014:  ldarg.3
    IL_0015:  ldarg.s    compression
    IL_0017:  ldarg.s    extraHeaders
    IL_0019:  ldarg.s    settings
    IL_001b:  call       string Jose.JWT::Encode(string,
                                                 object,
                                                 valuetype Jose.JweAlgorithm,
                                                 valuetype Jose.JweEncryption,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression>,
                                                 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                 class Jose.JwtSettings)
    IL_0020:  ret
  } // end of method JWT::Encode

  .method public hidebysig static string 
          Encode(string payload,
                 object key,
                 valuetype Jose.JweAlgorithm alg,
                 valuetype Jose.JweEncryption enc,
                 [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression> compression,
                 [opt] class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> extraHeaders,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    .param [6] = nullref
    .param [7] = nullref
    // Code size       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Payload expected to be not empty, whitespace or nu"
    + "ll."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       void Jose.Ensure::IsNotEmpty(string,
                                                      string,
                                                      object[])
    IL_0011:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0016:  ldarg.0
    IL_0017:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_001c:  ldarg.1
    IL_001d:  ldarg.2
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    compression
    IL_0021:  ldarg.s    extraHeaders
    IL_0023:  ldarg.s    settings
    IL_0025:  call       string Jose.JWT::EncodeBytes(uint8[],
                                                      object,
                                                      valuetype Jose.JweAlgorithm,
                                                      valuetype Jose.JweEncryption,
                                                      valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression>,
                                                      class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                      class Jose.JwtSettings)
    IL_002a:  ret
  } // end of method JWT::Encode

  .method public hidebysig static string 
          EncodeBytes(uint8[] payload,
                      object key,
                      valuetype Jose.JweAlgorithm alg,
                      valuetype Jose.JweEncryption enc,
                      [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression> compression,
                      [opt] class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> extraHeaders,
                      [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    .param [6] = nullref
    .param [7] = nullref
    // Code size       319 (0x13f)
    .maxstack  6
    .locals init (class Jose.JwtSettings V_0,
             class Jose.jwe.IJweAlgorithm V_1,
             class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> V_2,
             uint8[] V_3,
             uint8[] V_4,
             uint8[] V_5,
             uint8[] V_6,
             uint8[][] V_7)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "payload"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.s    settings
    IL_0010:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldarg.2
    IL_0018:  callvirt   instance class Jose.IKeyManagement Jose.JwtSettings::Jwa(valuetype Jose.JweAlgorithm)
    IL_001d:  ldloc.0
    IL_001e:  ldarg.3
    IL_001f:  callvirt   instance class Jose.jwe.IJweAlgorithm Jose.JwtSettings::Jwe(valuetype Jose.JweEncryption)
    IL_0024:  stloc.1
    IL_0025:  dup
    IL_0026:  brtrue.s   IL_003e

    IL_0028:  ldstr      "Unsupported JWA algorithm requested: {0}"
    IL_002d:  ldarg.2
    IL_002e:  box        Jose.JweAlgorithm
    IL_0033:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0038:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_003d:  throw

    IL_003e:  ldloc.1
    IL_003f:  brtrue.s   IL_0057

    IL_0041:  ldstr      "Unsupported JWE algorithm requested: {0}"
    IL_0046:  ldarg.3
    IL_0047:  box        Jose.JweEncryption
    IL_004c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0051:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_0056:  throw

    IL_0057:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::.ctor()
    IL_005c:  dup
    IL_005d:  ldstr      "alg"
    IL_0062:  ldloc.0
    IL_0063:  ldarg.2
    IL_0064:  callvirt   instance string Jose.JwtSettings::JwaHeaderValue(valuetype Jose.JweAlgorithm)
    IL_0069:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::Add(!0,
                                                                                                                   !1)
    IL_006e:  dup
    IL_006f:  ldstr      "enc"
    IL_0074:  ldloc.0
    IL_0075:  ldarg.3
    IL_0076:  callvirt   instance string Jose.JwtSettings::JweHeaderValue(valuetype Jose.JweEncryption)
    IL_007b:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::Add(!0,
                                                                                                                   !1)
    IL_0080:  stloc.2
    IL_0081:  ldloc.2
    IL_0082:  ldarg.s    extraHeaders
    IL_0084:  call       void Jose.Dictionaries::Append<string,object>(class [mscorlib]System.Collections.Generic.IDictionary`2<!!0,!!1>,
                                                                       class [mscorlib]System.Collections.Generic.IDictionary`2<!!0,!!1>)
    IL_0089:  ldloc.1
    IL_008a:  callvirt   instance int32 Jose.jwe.IJweAlgorithm::get_KeySize()
    IL_008f:  ldarg.1
    IL_0090:  ldloc.2
    IL_0091:  callvirt   instance uint8[][] Jose.IKeyManagement::WrapNewKey(int32,
                                                                            object,
                                                                            class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_0096:  dup
    IL_0097:  ldc.i4.0
    IL_0098:  ldelem.ref
    IL_0099:  stloc.3
    IL_009a:  ldc.i4.1
    IL_009b:  ldelem.ref
    IL_009c:  stloc.s    V_4
    IL_009e:  ldarga.s   compression
    IL_00a0:  call       instance bool valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression>::get_HasValue()
    IL_00a5:  brfalse.s  IL_00d4

    IL_00a7:  ldloc.2
    IL_00a8:  ldstr      "zip"
    IL_00ad:  ldloc.0
    IL_00ae:  ldarga.s   compression
    IL_00b0:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression>::get_Value()
    IL_00b5:  callvirt   instance string Jose.JwtSettings::CompressionHeader(valuetype Jose.JweCompression)
    IL_00ba:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_00bf:  ldloc.0
    IL_00c0:  ldarga.s   compression
    IL_00c2:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweCompression>::get_Value()
    IL_00c7:  callvirt   instance class Jose.ICompression Jose.JwtSettings::Compression(valuetype Jose.JweCompression)
    IL_00cc:  ldarg.0
    IL_00cd:  callvirt   instance uint8[] Jose.ICompression::Compress(uint8[])
    IL_00d2:  starg.s    payload
    IL_00d4:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_00d9:  ldloc.0
    IL_00da:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_00df:  ldloc.2
    IL_00e0:  callvirt   instance string Jose.IJsonMapper::Serialize(object)
    IL_00e5:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_00ea:  stloc.s    V_5
    IL_00ec:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_00f1:  ldc.i4.1
    IL_00f2:  newarr     uint8[]
    IL_00f7:  dup
    IL_00f8:  ldc.i4.0
    IL_00f9:  ldloc.s    V_5
    IL_00fb:  stelem.ref
    IL_00fc:  call       string Jose.Compact::Serialize(uint8[][])
    IL_0101:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0106:  stloc.s    V_6
    IL_0108:  ldloc.1
    IL_0109:  ldloc.s    V_6
    IL_010b:  ldarg.0
    IL_010c:  ldloc.3
    IL_010d:  callvirt   instance uint8[][] Jose.jwe.IJweAlgorithm::Encrypt(uint8[],
                                                                            uint8[],
                                                                            uint8[])
    IL_0112:  stloc.s    V_7
    IL_0114:  ldc.i4.5
    IL_0115:  newarr     uint8[]
    IL_011a:  dup
    IL_011b:  ldc.i4.0
    IL_011c:  ldloc.s    V_5
    IL_011e:  stelem.ref
    IL_011f:  dup
    IL_0120:  ldc.i4.1
    IL_0121:  ldloc.s    V_4
    IL_0123:  stelem.ref
    IL_0124:  dup
    IL_0125:  ldc.i4.2
    IL_0126:  ldloc.s    V_7
    IL_0128:  ldc.i4.0
    IL_0129:  ldelem.ref
    IL_012a:  stelem.ref
    IL_012b:  dup
    IL_012c:  ldc.i4.3
    IL_012d:  ldloc.s    V_7
    IL_012f:  ldc.i4.1
    IL_0130:  ldelem.ref
    IL_0131:  stelem.ref
    IL_0132:  dup
    IL_0133:  ldc.i4.4
    IL_0134:  ldloc.s    V_7
    IL_0136:  ldc.i4.2
    IL_0137:  ldelem.ref
    IL_0138:  stelem.ref
    IL_0139:  call       string Jose.Compact::Serialize(uint8[][])
    IL_013e:  ret
  } // end of method JWT::EncodeBytes

  .method public hidebysig static string 
          Encode(object payload,
                 object key,
                 valuetype Jose.JwsAlgorithm 'algorithm',
                 [opt] class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> extraHeaders,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [4] = nullref
    .param [5] = nullref
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.s    settings
    IL_0002:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0007:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance string Jose.IJsonMapper::Serialize(object)
    IL_0012:  ldarg.1
    IL_0013:  ldarg.2
    IL_0014:  ldarg.3
    IL_0015:  ldarg.s    settings
    IL_0017:  call       string Jose.JWT::Encode(string,
                                                 object,
                                                 valuetype Jose.JwsAlgorithm,
                                                 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                 class Jose.JwtSettings)
    IL_001c:  ret
  } // end of method JWT::Encode

  .method public hidebysig static string 
          Encode(string payload,
                 object key,
                 valuetype Jose.JwsAlgorithm 'algorithm',
                 [opt] class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> extraHeaders,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [4] = nullref
    .param [5] = nullref
    // Code size       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Payload expected to be not empty, whitespace or nu"
    + "ll."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       void Jose.Ensure::IsNotEmpty(string,
                                                      string,
                                                      object[])
    IL_0011:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0016:  ldarg.0
    IL_0017:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_001c:  ldarg.1
    IL_001d:  ldarg.2
    IL_001e:  ldarg.3
    IL_001f:  ldarg.s    settings
    IL_0021:  call       string Jose.JWT::EncodeBytes(uint8[],
                                                      object,
                                                      valuetype Jose.JwsAlgorithm,
                                                      class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                      class Jose.JwtSettings)
    IL_0026:  ret
  } // end of method JWT::Encode

  .method public hidebysig static string 
          EncodeBytes(uint8[] payload,
                      object key,
                      valuetype Jose.JwsAlgorithm 'algorithm',
                      [opt] class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> extraHeaders,
                      [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [4] = nullref
    .param [5] = nullref
    // Code size       198 (0xc6)
    .maxstack  5
    .locals init (class Jose.JwtSettings V_0,
             class [mscorlib]System.Collections.Generic.Dictionary`2<string,object> V_1,
             uint8[] V_2,
             uint8[] V_3,
             uint8[] V_4)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000e

    IL_0003:  ldstr      "payload"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    IL_000e:  ldarg.3
    IL_000f:  brtrue.s   IL_0028

    IL_0011:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::.ctor()
    IL_0016:  dup
    IL_0017:  ldstr      "typ"
    IL_001c:  ldstr      "JWT"
    IL_0021:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::Add(!0,
                                                                                                                   !1)
    IL_0026:  starg.s    extraHeaders
    IL_0028:  ldarg.s    settings
    IL_002a:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_002f:  stloc.0
    IL_0030:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::.ctor()
    IL_0035:  dup
    IL_0036:  ldstr      "alg"
    IL_003b:  ldloc.0
    IL_003c:  ldarg.2
    IL_003d:  callvirt   instance string Jose.JwtSettings::JwsHeaderValue(valuetype Jose.JwsAlgorithm)
    IL_0042:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::Add(!0,
                                                                                                                   !1)
    IL_0047:  stloc.1
    IL_0048:  ldloc.1
    IL_0049:  ldarg.3
    IL_004a:  call       void Jose.Dictionaries::Append<string,object>(class [mscorlib]System.Collections.Generic.IDictionary`2<!!0,!!1>,
                                                                       class [mscorlib]System.Collections.Generic.IDictionary`2<!!0,!!1>)
    IL_004f:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0054:  ldloc.0
    IL_0055:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_005a:  ldloc.1
    IL_005b:  callvirt   instance string Jose.IJsonMapper::Serialize(object)
    IL_0060:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0065:  stloc.2
    IL_0066:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_006b:  ldc.i4.2
    IL_006c:  newarr     uint8[]
    IL_0071:  dup
    IL_0072:  ldc.i4.0
    IL_0073:  ldloc.2
    IL_0074:  stelem.ref
    IL_0075:  dup
    IL_0076:  ldc.i4.1
    IL_0077:  ldarg.0
    IL_0078:  stelem.ref
    IL_0079:  call       string Jose.Compact::Serialize(uint8[][])
    IL_007e:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0083:  stloc.3
    IL_0084:  ldloc.0
    IL_0085:  ldarg.2
    IL_0086:  callvirt   instance class Jose.IJwsAlgorithm Jose.JwtSettings::Jws(valuetype Jose.JwsAlgorithm)
    IL_008b:  dup
    IL_008c:  brtrue.s   IL_00a4

    IL_008e:  ldstr      "Unsupported JWS algorithm requested: {0}"
    IL_0093:  ldarg.2
    IL_0094:  box        Jose.JwsAlgorithm
    IL_0099:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_009e:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_00a3:  throw

    IL_00a4:  ldloc.3
    IL_00a5:  ldarg.1
    IL_00a6:  callvirt   instance uint8[] Jose.IJwsAlgorithm::Sign(uint8[],
                                                                   object)
    IL_00ab:  stloc.s    V_4
    IL_00ad:  ldc.i4.3
    IL_00ae:  newarr     uint8[]
    IL_00b3:  dup
    IL_00b4:  ldc.i4.0
    IL_00b5:  ldloc.2
    IL_00b6:  stelem.ref
    IL_00b7:  dup
    IL_00b8:  ldc.i4.1
    IL_00b9:  ldarg.0
    IL_00ba:  stelem.ref
    IL_00bb:  dup
    IL_00bc:  ldc.i4.2
    IL_00bd:  ldloc.s    V_4
    IL_00bf:  stelem.ref
    IL_00c0:  call       string Jose.Compact::Serialize(uint8[][])
    IL_00c5:  ret
  } // end of method JWT::EncodeBytes

  .method public hidebysig static string 
          Decode(string token,
                 object key,
                 valuetype Jose.JweAlgorithm alg,
                 valuetype Jose.JweEncryption enc,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    // Code size       31 (0x1f)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>
    IL_000a:  ldloc.0
    IL_000b:  ldarg.2
    IL_000c:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>::.ctor(!0)
    IL_0011:  ldarg.3
    IL_0012:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>::.ctor(!0)
    IL_0017:  ldarg.s    settings
    IL_0019:  call       string Jose.JWT::Decode(string,
                                                 object,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                 class Jose.JwtSettings)
    IL_001e:  ret
  } // end of method JWT::Decode

  .method public hidebysig static uint8[] 
          DecodeBytes(string token,
                      object key,
                      valuetype Jose.JweAlgorithm alg,
                      valuetype Jose.JweEncryption enc,
                      [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    // Code size       31 (0x1f)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>
    IL_000a:  ldloc.0
    IL_000b:  ldarg.2
    IL_000c:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>::.ctor(!0)
    IL_0011:  ldarg.3
    IL_0012:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>::.ctor(!0)
    IL_0017:  ldarg.s    settings
    IL_0019:  call       uint8[] Jose.JWT::DecodeBytes(string,
                                                       object,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                       class Jose.JwtSettings)
    IL_001e:  ret
  } // end of method JWT::DecodeBytes

  .method public hidebysig static string 
          Decode(string token,
                 object key,
                 valuetype Jose.JwsAlgorithm alg,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [4] = nullref
    // Code size       33 (0x21)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> V_0,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>::.ctor(!0)
    IL_0008:  ldloca.s   V_0
    IL_000a:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>
    IL_0010:  ldloc.0
    IL_0011:  ldloca.s   V_1
    IL_0013:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>
    IL_0019:  ldloc.1
    IL_001a:  ldarg.3
    IL_001b:  call       string Jose.JWT::Decode(string,
                                                 object,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                 class Jose.JwtSettings)
    IL_0020:  ret
  } // end of method JWT::Decode

  .method public hidebysig static uint8[] 
          DecodeBytes(string token,
                      object key,
                      valuetype Jose.JwsAlgorithm alg,
                      [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [4] = nullref
    // Code size       33 (0x21)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> V_0,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  newobj     instance void valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>::.ctor(!0)
    IL_0008:  ldloca.s   V_0
    IL_000a:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>
    IL_0010:  ldloc.0
    IL_0011:  ldloca.s   V_1
    IL_0013:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>
    IL_0019:  ldloc.1
    IL_001a:  ldarg.3
    IL_001b:  call       uint8[] Jose.JWT::DecodeBytes(string,
                                                       object,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                       class Jose.JwtSettings)
    IL_0020:  ret
  } // end of method JWT::DecodeBytes

  .method public hidebysig static string 
          Decode(string token,
                 [opt] object key,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    .param [3] = nullref
    // Code size       36 (0x24)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> V_0,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> V_1,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>
    IL_000a:  ldloc.0
    IL_000b:  ldloca.s   V_1
    IL_000d:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>
    IL_0013:  ldloc.1
    IL_0014:  ldloca.s   V_2
    IL_0016:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>
    IL_001c:  ldloc.2
    IL_001d:  ldarg.2
    IL_001e:  call       string Jose.JWT::Decode(string,
                                                 object,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                 class Jose.JwtSettings)
    IL_0023:  ret
  } // end of method JWT::Decode

  .method public hidebysig static uint8[] 
          DecodeBytes(string token,
                      [opt] object key,
                      [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    .param [3] = nullref
    // Code size       36 (0x24)
    .maxstack  6
    .locals init (valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> V_0,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> V_1,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>
    IL_000a:  ldloc.0
    IL_000b:  ldloca.s   V_1
    IL_000d:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>
    IL_0013:  ldloc.1
    IL_0014:  ldloca.s   V_2
    IL_0016:  initobj    valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>
    IL_001c:  ldloc.2
    IL_001d:  ldarg.2
    IL_001e:  call       uint8[] Jose.JWT::DecodeBytes(string,
                                                       object,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                       class Jose.JwtSettings)
    IL_0023:  ret
  } // end of method JWT::DecodeBytes

  .method public hidebysig static !!T  Decode<T>(string token,
                                                 object key,
                                                 valuetype Jose.JweAlgorithm alg,
                                                 valuetype Jose.JweEncryption enc,
                                                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.s    settings
    IL_0002:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0007:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  ldarg.s    settings
    IL_0012:  call       string Jose.JWT::Decode(string,
                                                 object,
                                                 valuetype Jose.JweAlgorithm,
                                                 valuetype Jose.JweEncryption,
                                                 class Jose.JwtSettings)
    IL_0017:  callvirt   instance !!0 Jose.IJsonMapper::Parse<!!0>(string)
    IL_001c:  ret
  } // end of method JWT::Decode

  .method public hidebysig static !!T  Decode<T>(string token,
                                                 object key,
                                                 valuetype Jose.JwsAlgorithm alg,
                                                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [4] = nullref
    // Code size       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0006:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  ldarg.3
    IL_000f:  call       string Jose.JWT::Decode(string,
                                                 object,
                                                 valuetype Jose.JwsAlgorithm,
                                                 class Jose.JwtSettings)
    IL_0014:  callvirt   instance !!0 Jose.IJsonMapper::Parse<!!0>(string)
    IL_0019:  ret
  } // end of method JWT::Decode

  .method public hidebysig static !!T  Decode<T>(string token,
                                                 [opt] object key,
                                                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    .param [3] = nullref
    // Code size       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_0006:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  call       string Jose.JWT::Decode(string,
                                                 object,
                                                 class Jose.JwtSettings)
    IL_0013:  callvirt   instance !!0 Jose.IJsonMapper::Parse<!!0>(string)
    IL_0018:  ret
  } // end of method JWT::Decode

  .method private hidebysig static uint8[] 
          DecodeBytes(string token,
                      [opt] object key,
                      [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> expectedJwsAlg,
                      [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> expectedJweAlg,
                      [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> expectedJweEnc,
                      [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    .param [3] = nullref
    .param [4] = nullref
    .param [5] = nullref
    .param [6] = nullref
    // Code size       247 (0xf7)
    .maxstack  5
    .locals init (uint8[][] V_0,
             uint8[] V_1,
             uint8[] V_2,
             uint8[] V_3,
             uint8[] V_4,
             string V_5,
             valuetype Jose.JwsAlgorithm V_6,
             valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> V_7,
             valuetype Jose.JwsAlgorithm V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldstr      "Incoming token expected to be in compact serializa"
    + "tion form, not empty, whitespace or null."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       void Jose.Ensure::IsNotEmpty(string,
                                                      string,
                                                      object[])
    IL_0011:  ldarg.0
    IL_0012:  call       uint8[][] Jose.Compact::Parse(string)
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  ldc.i4.5
    IL_001c:  bne.un.s   IL_002b

    IL_001e:  ldloc.0
    IL_001f:  ldarg.1
    IL_0020:  ldarg.3
    IL_0021:  ldarg.s    expectedJweEnc
    IL_0023:  ldarg.s    settings
    IL_0025:  call       uint8[] Jose.JWT::DecryptBytes(uint8[][],
                                                        object,
                                                        valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                        valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                        class Jose.JwtSettings)
    IL_002a:  ret

    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.0
    IL_002d:  ldelem.ref
    IL_002e:  stloc.1
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.1
    IL_0031:  ldelem.ref
    IL_0032:  stloc.2
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.2
    IL_0035:  ldelem.ref
    IL_0036:  stloc.3
    IL_0037:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_003c:  ldc.i4.2
    IL_003d:  newarr     uint8[]
    IL_0042:  dup
    IL_0043:  ldc.i4.0
    IL_0044:  ldloc.1
    IL_0045:  stelem.ref
    IL_0046:  dup
    IL_0047:  ldc.i4.1
    IL_0048:  ldloc.2
    IL_0049:  stelem.ref
    IL_004a:  call       string Jose.Compact::Serialize(uint8[][])
    IL_004f:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0054:  stloc.s    V_4
    IL_0056:  ldarg.s    settings
    IL_0058:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_005d:  dup
    IL_005e:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_0063:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0068:  ldloc.1
    IL_0069:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_006e:  callvirt   instance !!0 Jose.IJsonMapper::Parse<class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>>(string)
    IL_0073:  ldstr      "alg"
    IL_0078:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::get_Item(!0)
    IL_007d:  castclass  [mscorlib]System.String
    IL_0082:  stloc.s    V_5
    IL_0084:  dup
    IL_0085:  ldloc.s    V_5
    IL_0087:  callvirt   instance valuetype Jose.JwsAlgorithm Jose.JwtSettings::JwsAlgorithmFromHeader(string)
    IL_008c:  stloc.s    V_6
    IL_008e:  ldarga.s   expectedJwsAlg
    IL_0090:  call       instance bool valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>::get_HasValue()
    IL_0095:  brfalse.s  IL_00c3

    IL_0097:  ldarg.2
    IL_0098:  stloc.s    V_7
    IL_009a:  ldloc.s    V_6
    IL_009c:  stloc.s    V_8
    IL_009e:  ldloca.s   V_7
    IL_00a0:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>::GetValueOrDefault()
    IL_00a5:  ldloc.s    V_8
    IL_00a7:  beq.s      IL_00ac

    IL_00a9:  ldc.i4.1
    IL_00aa:  br.s       IL_00b6

    IL_00ac:  ldloca.s   V_7
    IL_00ae:  call       instance bool valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>::get_HasValue()
    IL_00b3:  ldc.i4.0
    IL_00b4:  ceq
    IL_00b6:  brfalse.s  IL_00c3

    IL_00b8:  ldstr      "The algorithm type passed to the Decode method did"
    + " not match the algorithm type in the header."
    IL_00bd:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_00c2:  throw

    IL_00c3:  ldloc.s    V_6
    IL_00c5:  callvirt   instance class Jose.IJwsAlgorithm Jose.JwtSettings::Jws(valuetype Jose.JwsAlgorithm)
    IL_00ca:  dup
    IL_00cb:  brtrue.s   IL_00df

    IL_00cd:  ldstr      "Unsupported JWS algorithm requested: {0}"
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00d9:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_00de:  throw

    IL_00df:  ldloc.3
    IL_00e0:  ldloc.s    V_4
    IL_00e2:  ldarg.1
    IL_00e3:  callvirt   instance bool Jose.IJwsAlgorithm::Verify(uint8[],
                                                                  uint8[],
                                                                  object)
    IL_00e8:  brtrue.s   IL_00f5

    IL_00ea:  ldstr      "Invalid signature."
    IL_00ef:  newobj     instance void Jose.IntegrityException::.ctor(string)
    IL_00f4:  throw

    IL_00f5:  ldloc.2
    IL_00f6:  ret
  } // end of method JWT::DecodeBytes

  .method private hidebysig static string 
          Decode(string token,
                 [opt] object key,
                 [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm> jwsAlg,
                 [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> jweAlg,
                 [opt] valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> jweEnc,
                 [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [2] = nullref
    .param [3] = nullref
    .param [4] = nullref
    .param [5] = nullref
    .param [6] = nullref
    // Code size       26 (0x1a)
    .maxstack  6
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    jweEnc
    IL_0006:  ldarg.s    settings
    IL_0008:  call       uint8[] Jose.JWT::DecodeBytes(string,
                                                       object,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JwsAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>,
                                                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>,
                                                       class Jose.JwtSettings)
    IL_000d:  stloc.0
    IL_000e:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_0019:  ret
  } // end of method JWT::Decode

  .method private hidebysig static uint8[] 
          DecryptBytes(uint8[][] parts,
                       object key,
                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm> jweAlg,
                       valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption> jweEnc,
                       [opt] class Jose.JwtSettings settings) cil managed
  {
    .param [5] = nullref
    // Code size       359 (0x167)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[] V_1,
             uint8[] V_2,
             uint8[] V_3,
             uint8[] V_4,
             class Jose.JwtSettings V_5,
             class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> V_6,
             valuetype Jose.JweAlgorithm V_7,
             valuetype Jose.JweEncryption V_8,
             class Jose.IKeyManagement V_9,
             class Jose.jwe.IJweAlgorithm V_10,
             uint8[] V_11,
             uint8[] V_12,
             uint8[] V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  ldelem.ref
    IL_0003:  stloc.0
    IL_0004:  ldarg.0
    IL_0005:  ldc.i4.1
    IL_0006:  ldelem.ref
    IL_0007:  stloc.1
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.2
    IL_000a:  ldelem.ref
    IL_000b:  stloc.2
    IL_000c:  ldarg.0
    IL_000d:  ldc.i4.3
    IL_000e:  ldelem.ref
    IL_000f:  stloc.3
    IL_0010:  ldarg.0
    IL_0011:  ldc.i4.4
    IL_0012:  ldelem.ref
    IL_0013:  stloc.s    V_4
    IL_0015:  ldarg.s    settings
    IL_0017:  call       class Jose.JwtSettings Jose.JWT::GetSettings(class Jose.JwtSettings)
    IL_001c:  stloc.s    V_5
    IL_001e:  ldloc.s    V_5
    IL_0020:  callvirt   instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    IL_0025:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_002a:  ldloc.0
    IL_002b:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_0030:  callvirt   instance !!0 Jose.IJsonMapper::Parse<class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>>(string)
    IL_0035:  stloc.s    V_6
    IL_0037:  ldloc.s    V_5
    IL_0039:  ldloc.s    V_6
    IL_003b:  ldstr      "alg"
    IL_0040:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0045:  castclass  [mscorlib]System.String
    IL_004a:  callvirt   instance valuetype Jose.JweAlgorithm Jose.JwtSettings::JwaAlgorithmFromHeader(string)
    IL_004f:  stloc.s    V_7
    IL_0051:  ldloc.s    V_5
    IL_0053:  ldloc.s    V_6
    IL_0055:  ldstr      "enc"
    IL_005a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_005f:  castclass  [mscorlib]System.String
    IL_0064:  callvirt   instance valuetype Jose.JweEncryption Jose.JwtSettings::JweAlgorithmFromHeader(string)
    IL_0069:  stloc.s    V_8
    IL_006b:  ldloc.s    V_5
    IL_006d:  ldloc.s    V_7
    IL_006f:  callvirt   instance class Jose.IKeyManagement Jose.JwtSettings::Jwa(valuetype Jose.JweAlgorithm)
    IL_0074:  stloc.s    V_9
    IL_0076:  ldloc.s    V_5
    IL_0078:  ldloc.s    V_8
    IL_007a:  callvirt   instance class Jose.jwe.IJweAlgorithm Jose.JwtSettings::Jwe(valuetype Jose.JweEncryption)
    IL_007f:  stloc.s    V_10
    IL_0081:  ldloc.s    V_9
    IL_0083:  brtrue.s   IL_009c

    IL_0085:  ldstr      "Unsupported JWA algorithm requested: {0}"
    IL_008a:  ldloc.s    V_7
    IL_008c:  box        Jose.JweAlgorithm
    IL_0091:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0096:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_009b:  throw

    IL_009c:  ldloc.s    V_10
    IL_009e:  brtrue.s   IL_00b7

    IL_00a0:  ldstr      "Unsupported JWE algorithm requested: {0}"
    IL_00a5:  ldloc.s    V_8
    IL_00a7:  box        Jose.JweEncryption
    IL_00ac:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_00b1:  newobj     instance void Jose.JoseException::.ctor(string)
    IL_00b6:  throw

    IL_00b7:  ldarga.s   jweAlg
    IL_00b9:  call       instance bool valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>::get_HasValue()
    IL_00be:  brfalse.s  IL_00d6

    IL_00c0:  ldarga.s   jweAlg
    IL_00c2:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweAlgorithm>::get_Value()
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  beq.s      IL_00d6

    IL_00cb:  ldstr      "The algorithm type passed to the Decrypt method di"
    + "d not match the algorithm type in the header."
    IL_00d0:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_00d5:  throw

    IL_00d6:  ldarga.s   jweEnc
    IL_00d8:  call       instance bool valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>::get_HasValue()
    IL_00dd:  brfalse.s  IL_00f5

    IL_00df:  ldarga.s   jweEnc
    IL_00e1:  call       instance !0 valuetype [mscorlib]System.Nullable`1<valuetype Jose.JweEncryption>::get_Value()
    IL_00e6:  ldloc.s    V_8
    IL_00e8:  beq.s      IL_00f5

    IL_00ea:  ldstr      "The encryption type passed to the Decrypt method d"
    + "id not match the encryption type in the header."
    IL_00ef:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_00f4:  throw

    IL_00f5:  ldloc.s    V_9
    IL_00f7:  ldloc.1
    IL_00f8:  ldarg.1
    IL_00f9:  ldloc.s    V_10
    IL_00fb:  callvirt   instance int32 Jose.jwe.IJweAlgorithm::get_KeySize()
    IL_0100:  ldloc.s    V_6
    IL_0102:  callvirt   instance uint8[] Jose.IKeyManagement::Unwrap(uint8[],
                                                                      object,
                                                                      int32,
                                                                      class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_0107:  stloc.s    V_11
    IL_0109:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_010e:  ldc.i4.1
    IL_010f:  newarr     uint8[]
    IL_0114:  dup
    IL_0115:  ldc.i4.0
    IL_0116:  ldloc.0
    IL_0117:  stelem.ref
    IL_0118:  call       string Jose.Compact::Serialize(uint8[][])
    IL_011d:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0122:  stloc.s    V_12
    IL_0124:  ldloc.s    V_10
    IL_0126:  ldloc.s    V_12
    IL_0128:  ldloc.s    V_11
    IL_012a:  ldloc.2
    IL_012b:  ldloc.3
    IL_012c:  ldloc.s    V_4
    IL_012e:  callvirt   instance uint8[] Jose.jwe.IJweAlgorithm::Decrypt(uint8[],
                                                                          uint8[],
                                                                          uint8[],
                                                                          uint8[],
                                                                          uint8[])
    IL_0133:  stloc.s    V_13
    IL_0135:  ldloc.s    V_6
    IL_0137:  ldstr      "zip"
    IL_013c:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::ContainsKey(!0)
    IL_0141:  brfalse.s  IL_0164

    IL_0143:  ldloc.s    V_5
    IL_0145:  ldloc.s    V_6
    IL_0147:  ldstr      "zip"
    IL_014c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0151:  castclass  [mscorlib]System.String
    IL_0156:  callvirt   instance class Jose.ICompression Jose.JwtSettings::Compression(string)
    IL_015b:  ldloc.s    V_13
    IL_015d:  callvirt   instance uint8[] Jose.ICompression::Decompress(uint8[])
    IL_0162:  stloc.s    V_13
    IL_0164:  ldloc.s    V_13
    IL_0166:  ret
  } // end of method JWT::DecryptBytes

  .method private hidebysig static class Jose.JwtSettings 
          GetSettings(class Jose.JwtSettings settings) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  dup
    IL_0002:  brtrue.s   IL_000a

    IL_0004:  pop
    IL_0005:  ldsfld     class Jose.JwtSettings Jose.JWT::defaultSettings
    IL_000a:  ret
  } // end of method JWT::GetSettings

  .property class Jose.JwtSettings DefaultSettings()
  {
    .get class Jose.JwtSettings Jose.JWT::get_DefaultSettings()
  } // end of property JWT::DefaultSettings
  .property class Jose.IJsonMapper JsonMapper()
  {
    .custom instance void [mscorlib]System.ObsoleteAttribute::.ctor(string) = ( 01 00 33 43 75 73 74 6F 6D 20 4A 73 6F 6E 4D 61   // ..3Custom JsonMa
                                                                                70 70 65 72 73 20 73 68 6F 75 6C 64 20 62 65 20   // ppers should be 
                                                                                73 65 74 20 69 6E 20 44 65 66 61 75 6C 74 53 65   // set in DefaultSe
                                                                                74 74 69 6E 67 73 00 00 )                         // ttings..
    .set void Jose.JWT::set_JsonMapper(class Jose.IJsonMapper)
  } // end of property JWT::JsonMapper
} // end of class Jose.JWT

.class public auto ansi beforefieldinit Jose.JoseException
       extends [mscorlib]System.Exception
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [mscorlib]System.Exception::.ctor(string)
    IL_0007:  ret
  } // end of method JoseException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message,
                               class [mscorlib]System.Exception innerException) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(string,
                                                                         class [mscorlib]System.Exception)
    IL_0008:  ret
  } // end of method JoseException::.ctor

} // end of class Jose.JoseException

.class public auto ansi beforefieldinit Jose.IntegrityException
       extends Jose.JoseException
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Jose.JoseException::.ctor(string)
    IL_0007:  ret
  } // end of method IntegrityException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message,
                               class [mscorlib]System.Exception innerException) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Jose.JoseException::.ctor(string,
                                                                 class [mscorlib]System.Exception)
    IL_0008:  ret
  } // end of method IntegrityException::.ctor

} // end of class Jose.IntegrityException

.class public auto ansi beforefieldinit Jose.EncryptionException
       extends Jose.JoseException
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Jose.JoseException::.ctor(string)
    IL_0007:  ret
  } // end of method EncryptionException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message,
                               class [mscorlib]System.Exception innerException) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Jose.JoseException::.ctor(string,
                                                                 class [mscorlib]System.Exception)
    IL_0008:  ret
  } // end of method EncryptionException::.ctor

} // end of class Jose.EncryptionException

.class public auto ansi beforefieldinit Jose.InvalidAlgorithmException
       extends Jose.JoseException
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Jose.JoseException::.ctor(string)
    IL_0007:  ret
  } // end of method InvalidAlgorithmException::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string message,
                               class [mscorlib]System.Exception innerException) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Jose.JoseException::.ctor(string,
                                                                 class [mscorlib]System.Exception)
    IL_0008:  ret
  } // end of method InvalidAlgorithmException::.ctor

} // end of class Jose.InvalidAlgorithmException

.class public auto ansi beforefieldinit Jose.JwtSettings
       extends [mscorlib]System.Object
{
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm> jwsAlgorithms
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string> jwsAlgorithmsHeaderValue
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm> jwsAlgorithmsAliases
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm> encAlgorithms
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string> encAlgorithmsHeaderValue
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption> encAlgorithmsAliases
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement> keyAlgorithms
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string> keyAlgorithmsHeaderValue
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm> keyAlgorithmsAliases
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression> compressionAlgorithms
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string> jweCompressionHeaderValue
  .field private class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression> compressionAlgorithmsAliases
  .field private class Jose.IJsonMapper jsMapper
  .method public hidebysig instance class Jose.JwtSettings 
          RegisterJwa(valuetype Jose.JweAlgorithm alg,
                      class Jose.IKeyManagement impl) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement> Jose.JwtSettings::keyAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::set_Item(!0,
                                                                                                                                                                !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterJwa

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterJwaAlias(string alias,
                           valuetype Jose.JweAlgorithm alg) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm> Jose.JwtSettings::keyAlgorithmsAliases
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm>::set_Item(!0,
                                                                                                                                             !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterJwaAlias

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterJwe(valuetype Jose.JweEncryption alg,
                      class Jose.jwe.IJweAlgorithm impl) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm> Jose.JwtSettings::encAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::set_Item(!0,
                                                                                                                                                                    !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterJwe

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterJweAlias(string alias,
                           valuetype Jose.JweEncryption alg) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption> Jose.JwtSettings::encAlgorithmsAliases
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption>::set_Item(!0,
                                                                                                                                              !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterJweAlias

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterCompression(valuetype Jose.JweCompression alg,
                              class Jose.ICompression impl) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression> Jose.JwtSettings::compressionAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression>::set_Item(!0,
                                                                                                                                                                !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterCompression

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterCompressionAlias(string alias,
                                   valuetype Jose.JweCompression alg) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression> Jose.JwtSettings::compressionAlgorithmsAliases
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression>::set_Item(!0,
                                                                                                                                               !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterCompressionAlias

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterJws(valuetype Jose.JwsAlgorithm alg,
                      class Jose.IJwsAlgorithm impl) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm> Jose.JwtSettings::jwsAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::set_Item(!0,
                                                                                                                                                               !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterJws

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterJwsAlias(string alias,
                           valuetype Jose.JwsAlgorithm alg) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm> Jose.JwtSettings::jwsAlgorithmsAliases
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm>::set_Item(!0,
                                                                                                                                             !1)
    IL_000d:  ldarg.0
    IL_000e:  ret
  } // end of method JwtSettings::RegisterJwsAlias

  .method public hidebysig instance class Jose.JwtSettings 
          RegisterMapper(class Jose.IJsonMapper mapper) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Jose.IJsonMapper Jose.JwtSettings::jsMapper
    IL_0007:  ldarg.0
    IL_0008:  ret
  } // end of method JwtSettings::RegisterMapper

  .method public hidebysig specialname instance class Jose.IJsonMapper 
          get_JsonMapper() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Jose.IJsonMapper Jose.JwtSettings::jsMapper
    IL_0006:  ret
  } // end of method JwtSettings::get_JsonMapper

  .method public hidebysig specialname instance void 
          set_JsonMapper(class Jose.IJsonMapper 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Jose.IJsonMapper Jose.JwtSettings::jsMapper
    IL_0007:  ret
  } // end of method JwtSettings::set_JsonMapper

  .method public hidebysig instance class Jose.IJwsAlgorithm 
          Jws(valuetype Jose.JwsAlgorithm alg) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  3
    .locals init (class Jose.IJwsAlgorithm V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm> Jose.JwtSettings::jwsAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::TryGetValue(!0,
                                                                                                                                                                  !1&)
    IL_000e:  brtrue.s   IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method JwtSettings::Jws

  .method public hidebysig instance string 
          JwsHeaderValue(valuetype Jose.JwsAlgorithm 'algorithm') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string> Jose.JwtSettings::jwsAlgorithmsHeaderValue
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::get_Item(!0)
    IL_000c:  ret
  } // end of method JwtSettings::JwsHeaderValue

  .method public hidebysig instance valuetype Jose.JwsAlgorithm 
          JwsAlgorithmFromHeader(string headerValue) cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  3
    .locals init (valuetype Jose.JwsAlgorithm V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JwsAlgorithm,string> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JwsAlgorithm,string> V_2,
             valuetype Jose.JwsAlgorithm V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string> Jose.JwtSettings::jwsAlgorithmsHeaderValue
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::GetEnumerator()
    IL_000b:  stloc.1
    .try
    {
      IL_000c:  br.s       IL_002f

      IL_000e:  ldloca.s   V_1
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JwsAlgorithm,string>::get_Current()
      IL_0015:  stloc.2
      IL_0016:  ldloca.s   V_2
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JwsAlgorithm,string>::get_Value()
      IL_001d:  ldarg.1
      IL_001e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_0023:  brfalse.s  IL_002f

      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JwsAlgorithm,string>::get_Key()
      IL_002c:  stloc.3
      IL_002d:  leave.s    IL_006b

      IL_002f:  ldloca.s   V_1
      IL_0031:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JwsAlgorithm,string>::MoveNext()
      IL_0036:  brtrue.s   IL_000e

      IL_0038:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003a:  ldloca.s   V_1
      IL_003c:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JwsAlgorithm,string>
      IL_0042:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0047:  endfinally
    }  // end handler
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm> Jose.JwtSettings::jwsAlgorithmsAliases
    IL_004e:  ldarg.1
    IL_004f:  ldloca.s   V_0
    IL_0051:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_0056:  brfalse.s  IL_005a

    IL_0058:  ldloc.0
    IL_0059:  ret

    IL_005a:  ldstr      "JWS algorithm is not supported: {0}"
    IL_005f:  ldarg.1
    IL_0060:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0065:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_006a:  throw

    IL_006b:  ldloc.3
    IL_006c:  ret
  } // end of method JwtSettings::JwsAlgorithmFromHeader

  .method public hidebysig instance class Jose.jwe.IJweAlgorithm 
          Jwe(valuetype Jose.JweEncryption alg) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  3
    .locals init (class Jose.jwe.IJweAlgorithm V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm> Jose.JwtSettings::encAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::TryGetValue(!0,
                                                                                                                                                                       !1&)
    IL_000e:  brtrue.s   IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method JwtSettings::Jwe

  .method public hidebysig instance string 
          JweHeaderValue(valuetype Jose.JweEncryption 'algorithm') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string> Jose.JwtSettings::encAlgorithmsHeaderValue
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::get_Item(!0)
    IL_000c:  ret
  } // end of method JwtSettings::JweHeaderValue

  .method public hidebysig instance valuetype Jose.JweEncryption 
          JweAlgorithmFromHeader(string headerValue) cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  3
    .locals init (valuetype Jose.JweEncryption V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweEncryption,string> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweEncryption,string> V_2,
             valuetype Jose.JweEncryption V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string> Jose.JwtSettings::encAlgorithmsHeaderValue
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::GetEnumerator()
    IL_000b:  stloc.1
    .try
    {
      IL_000c:  br.s       IL_002f

      IL_000e:  ldloca.s   V_1
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweEncryption,string>::get_Current()
      IL_0015:  stloc.2
      IL_0016:  ldloca.s   V_2
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweEncryption,string>::get_Value()
      IL_001d:  ldarg.1
      IL_001e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_0023:  brfalse.s  IL_002f

      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweEncryption,string>::get_Key()
      IL_002c:  stloc.3
      IL_002d:  leave.s    IL_006b

      IL_002f:  ldloca.s   V_1
      IL_0031:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweEncryption,string>::MoveNext()
      IL_0036:  brtrue.s   IL_000e

      IL_0038:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003a:  ldloca.s   V_1
      IL_003c:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweEncryption,string>
      IL_0042:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0047:  endfinally
    }  // end handler
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption> Jose.JwtSettings::encAlgorithmsAliases
    IL_004e:  ldarg.1
    IL_004f:  ldloca.s   V_0
    IL_0051:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption>::TryGetValue(!0,
                                                                                                                                                 !1&)
    IL_0056:  brfalse.s  IL_005a

    IL_0058:  ldloc.0
    IL_0059:  ret

    IL_005a:  ldstr      "JWE algorithm is not supported: {0}"
    IL_005f:  ldarg.1
    IL_0060:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0065:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_006a:  throw

    IL_006b:  ldloc.3
    IL_006c:  ret
  } // end of method JwtSettings::JweAlgorithmFromHeader

  .method public hidebysig instance class Jose.IKeyManagement 
          Jwa(valuetype Jose.JweAlgorithm alg) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  3
    .locals init (class Jose.IKeyManagement V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement> Jose.JwtSettings::keyAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::TryGetValue(!0,
                                                                                                                                                                   !1&)
    IL_000e:  brtrue.s   IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method JwtSettings::Jwa

  .method public hidebysig instance string 
          JwaHeaderValue(valuetype Jose.JweAlgorithm alg) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string> Jose.JwtSettings::keyAlgorithmsHeaderValue
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::get_Item(!0)
    IL_000c:  ret
  } // end of method JwtSettings::JwaHeaderValue

  .method public hidebysig instance valuetype Jose.JweAlgorithm 
          JwaAlgorithmFromHeader(string headerValue) cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  3
    .locals init (valuetype Jose.JweAlgorithm V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweAlgorithm,string> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweAlgorithm,string> V_2,
             valuetype Jose.JweAlgorithm V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string> Jose.JwtSettings::keyAlgorithmsHeaderValue
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::GetEnumerator()
    IL_000b:  stloc.1
    .try
    {
      IL_000c:  br.s       IL_002f

      IL_000e:  ldloca.s   V_1
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweAlgorithm,string>::get_Current()
      IL_0015:  stloc.2
      IL_0016:  ldloca.s   V_2
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweAlgorithm,string>::get_Value()
      IL_001d:  ldarg.1
      IL_001e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_0023:  brfalse.s  IL_002f

      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweAlgorithm,string>::get_Key()
      IL_002c:  stloc.3
      IL_002d:  leave.s    IL_006b

      IL_002f:  ldloca.s   V_1
      IL_0031:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweAlgorithm,string>::MoveNext()
      IL_0036:  brtrue.s   IL_000e

      IL_0038:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003a:  ldloca.s   V_1
      IL_003c:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweAlgorithm,string>
      IL_0042:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0047:  endfinally
    }  // end handler
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm> Jose.JwtSettings::keyAlgorithmsAliases
    IL_004e:  ldarg.1
    IL_004f:  ldloca.s   V_0
    IL_0051:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm>::TryGetValue(!0,
                                                                                                                                                !1&)
    IL_0056:  brfalse.s  IL_005a

    IL_0058:  ldloc.0
    IL_0059:  ret

    IL_005a:  ldstr      "JWA algorithm is not supported: {0}."
    IL_005f:  ldarg.1
    IL_0060:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0065:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_006a:  throw

    IL_006b:  ldloc.3
    IL_006c:  ret
  } // end of method JwtSettings::JwaAlgorithmFromHeader

  .method public hidebysig instance class Jose.ICompression 
          Compression(valuetype Jose.JweCompression alg) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  3
    .locals init (class Jose.ICompression V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression> Jose.JwtSettings::compressionAlgorithms
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression>::TryGetValue(!0,
                                                                                                                                                                   !1&)
    IL_000e:  brtrue.s   IL_0012

    IL_0010:  ldnull
    IL_0011:  ret

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method JwtSettings::Compression

  .method public hidebysig instance class Jose.ICompression 
          Compression(string alg) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance valuetype Jose.JweCompression Jose.JwtSettings::CompressionAlgFromHeader(string)
    IL_0008:  call       instance class Jose.ICompression Jose.JwtSettings::Compression(valuetype Jose.JweCompression)
    IL_000d:  ret
  } // end of method JwtSettings::Compression

  .method public hidebysig instance string 
          CompressionHeader(valuetype Jose.JweCompression 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string> Jose.JwtSettings::jweCompressionHeaderValue
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string>::get_Item(!0)
    IL_000c:  ret
  } // end of method JwtSettings::CompressionHeader

  .method public hidebysig instance valuetype Jose.JweCompression 
          CompressionAlgFromHeader(string header) cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  3
    .locals init (valuetype Jose.JweCompression V_0,
             valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweCompression,string> V_1,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweCompression,string> V_2,
             valuetype Jose.JweCompression V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string> Jose.JwtSettings::jweCompressionHeaderValue
    IL_0006:  callvirt   instance valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string>::GetEnumerator()
    IL_000b:  stloc.1
    .try
    {
      IL_000c:  br.s       IL_002f

      IL_000e:  ldloca.s   V_1
      IL_0010:  call       instance valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweCompression,string>::get_Current()
      IL_0015:  stloc.2
      IL_0016:  ldloca.s   V_2
      IL_0018:  call       instance !1 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweCompression,string>::get_Value()
      IL_001d:  ldarg.1
      IL_001e:  callvirt   instance bool [mscorlib]System.String::Equals(string)
      IL_0023:  brfalse.s  IL_002f

      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<valuetype Jose.JweCompression,string>::get_Key()
      IL_002c:  stloc.3
      IL_002d:  leave.s    IL_006b

      IL_002f:  ldloca.s   V_1
      IL_0031:  call       instance bool valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweCompression,string>::MoveNext()
      IL_0036:  brtrue.s   IL_000e

      IL_0038:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003a:  ldloca.s   V_1
      IL_003c:  constrained. valuetype [mscorlib]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Jose.JweCompression,string>
      IL_0042:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0047:  endfinally
    }  // end handler
    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression> Jose.JwtSettings::compressionAlgorithmsAliases
    IL_004e:  ldarg.1
    IL_004f:  ldloca.s   V_0
    IL_0051:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression>::TryGetValue(!0,
                                                                                                                                                  !1&)
    IL_0056:  brfalse.s  IL_005a

    IL_0058:  ldloc.0
    IL_0059:  ret

    IL_005a:  ldstr      "Compression algorithm is not supported: {0}."
    IL_005f:  ldarg.1
    IL_0060:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0065:  newobj     instance void Jose.InvalidAlgorithmException::.ctor(string)
    IL_006a:  throw

    IL_006b:  ldloc.3
    IL_006c:  ret
  } // end of method JwtSettings::CompressionAlgFromHeader

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       1296 (0x510)
    .maxstack  6
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::.ctor()
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  newobj     instance void Jose.Plaintext::.ctor()
    IL_000d:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0012:  dup
    IL_0013:  ldc.i4.1
    IL_0014:  ldstr      "SHA256"
    IL_0019:  newobj     instance void Jose.HmacUsingSha::.ctor(string)
    IL_001e:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0023:  dup
    IL_0024:  ldc.i4.2
    IL_0025:  ldstr      "SHA384"
    IL_002a:  newobj     instance void Jose.HmacUsingSha::.ctor(string)
    IL_002f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0034:  dup
    IL_0035:  ldc.i4.3
    IL_0036:  ldstr      "SHA512"
    IL_003b:  newobj     instance void Jose.HmacUsingSha::.ctor(string)
    IL_0040:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0045:  dup
    IL_0046:  ldc.i4.4
    IL_0047:  ldstr      "SHA256"
    IL_004c:  newobj     instance void Jose.RsaUsingSha::.ctor(string)
    IL_0051:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0056:  dup
    IL_0057:  ldc.i4.5
    IL_0058:  ldstr      "SHA384"
    IL_005d:  newobj     instance void Jose.RsaUsingSha::.ctor(string)
    IL_0062:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0067:  dup
    IL_0068:  ldc.i4.6
    IL_0069:  ldstr      "SHA512"
    IL_006e:  newobj     instance void Jose.RsaUsingSha::.ctor(string)
    IL_0073:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0078:  dup
    IL_0079:  ldc.i4.7
    IL_007a:  ldc.i4.s   32
    IL_007c:  newobj     instance void Jose.RsaPssUsingSha::.ctor(int32)
    IL_0081:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0086:  dup
    IL_0087:  ldc.i4.8
    IL_0088:  ldc.i4.s   48
    IL_008a:  newobj     instance void Jose.RsaPssUsingSha::.ctor(int32)
    IL_008f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_0094:  dup
    IL_0095:  ldc.i4.s   9
    IL_0097:  ldc.i4.s   64
    IL_0099:  newobj     instance void Jose.RsaPssUsingSha::.ctor(int32)
    IL_009e:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_00a3:  dup
    IL_00a4:  ldc.i4.s   10
    IL_00a6:  ldc.i4     0x100
    IL_00ab:  newobj     instance void Jose.EcdsaUsingSha::.ctor(int32)
    IL_00b0:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_00b5:  dup
    IL_00b6:  ldc.i4.s   11
    IL_00b8:  ldc.i4     0x180
    IL_00bd:  newobj     instance void Jose.EcdsaUsingSha::.ctor(int32)
    IL_00c2:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_00c7:  dup
    IL_00c8:  ldc.i4.s   12
    IL_00ca:  ldc.i4     0x209
    IL_00cf:  newobj     instance void Jose.EcdsaUsingSha::.ctor(int32)
    IL_00d4:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm>::Add(!0,
                                                                                                                                                          !1)
    IL_00d9:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,class Jose.IJwsAlgorithm> Jose.JwtSettings::jwsAlgorithms
    IL_00de:  ldarg.0
    IL_00df:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::.ctor()
    IL_00e4:  dup
    IL_00e5:  ldc.i4.0
    IL_00e6:  ldstr      "none"
    IL_00eb:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_00f0:  dup
    IL_00f1:  ldc.i4.1
    IL_00f2:  ldstr      "HS256"
    IL_00f7:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_00fc:  dup
    IL_00fd:  ldc.i4.2
    IL_00fe:  ldstr      "HS384"
    IL_0103:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0108:  dup
    IL_0109:  ldc.i4.3
    IL_010a:  ldstr      "HS512"
    IL_010f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0114:  dup
    IL_0115:  ldc.i4.4
    IL_0116:  ldstr      "RS256"
    IL_011b:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0120:  dup
    IL_0121:  ldc.i4.5
    IL_0122:  ldstr      "RS384"
    IL_0127:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_012c:  dup
    IL_012d:  ldc.i4.6
    IL_012e:  ldstr      "RS512"
    IL_0133:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0138:  dup
    IL_0139:  ldc.i4.s   10
    IL_013b:  ldstr      "ES256"
    IL_0140:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0145:  dup
    IL_0146:  ldc.i4.s   11
    IL_0148:  ldstr      "ES384"
    IL_014d:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0152:  dup
    IL_0153:  ldc.i4.s   12
    IL_0155:  ldstr      "ES512"
    IL_015a:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_015f:  dup
    IL_0160:  ldc.i4.7
    IL_0161:  ldstr      "PS256"
    IL_0166:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_016b:  dup
    IL_016c:  ldc.i4.8
    IL_016d:  ldstr      "PS384"
    IL_0172:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0177:  dup
    IL_0178:  ldc.i4.s   9
    IL_017a:  ldstr      "PS512"
    IL_017f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0184:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JwsAlgorithm,string> Jose.JwtSettings::jwsAlgorithmsHeaderValue
    IL_0189:  ldarg.0
    IL_018a:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm>::.ctor()
    IL_018f:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JwsAlgorithm> Jose.JwtSettings::jwsAlgorithmsAliases
    IL_0194:  ldarg.0
    IL_0195:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::.ctor()
    IL_019a:  dup
    IL_019b:  ldc.i4.0
    IL_019c:  ldstr      "SHA256"
    IL_01a1:  newobj     instance void Jose.HmacUsingSha::.ctor(string)
    IL_01a6:  ldc.i4     0x100
    IL_01ab:  newobj     instance void Jose.AesCbcHmacEncryption::.ctor(class Jose.IJwsAlgorithm,
                                                                        int32)
    IL_01b0:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::Add(!0,
                                                                                                                                                               !1)
    IL_01b5:  dup
    IL_01b6:  ldc.i4.1
    IL_01b7:  ldstr      "SHA384"
    IL_01bc:  newobj     instance void Jose.HmacUsingSha::.ctor(string)
    IL_01c1:  ldc.i4     0x180
    IL_01c6:  newobj     instance void Jose.AesCbcHmacEncryption::.ctor(class Jose.IJwsAlgorithm,
                                                                        int32)
    IL_01cb:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::Add(!0,
                                                                                                                                                               !1)
    IL_01d0:  dup
    IL_01d1:  ldc.i4.2
    IL_01d2:  ldstr      "SHA512"
    IL_01d7:  newobj     instance void Jose.HmacUsingSha::.ctor(string)
    IL_01dc:  ldc.i4     0x200
    IL_01e1:  newobj     instance void Jose.AesCbcHmacEncryption::.ctor(class Jose.IJwsAlgorithm,
                                                                        int32)
    IL_01e6:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::Add(!0,
                                                                                                                                                               !1)
    IL_01eb:  dup
    IL_01ec:  ldc.i4.3
    IL_01ed:  ldc.i4     0x80
    IL_01f2:  newobj     instance void Jose.AesGcmEncryption::.ctor(int32)
    IL_01f7:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::Add(!0,
                                                                                                                                                               !1)
    IL_01fc:  dup
    IL_01fd:  ldc.i4.4
    IL_01fe:  ldc.i4     0xc0
    IL_0203:  newobj     instance void Jose.AesGcmEncryption::.ctor(int32)
    IL_0208:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::Add(!0,
                                                                                                                                                               !1)
    IL_020d:  dup
    IL_020e:  ldc.i4.5
    IL_020f:  ldc.i4     0x100
    IL_0214:  newobj     instance void Jose.AesGcmEncryption::.ctor(int32)
    IL_0219:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm>::Add(!0,
                                                                                                                                                               !1)
    IL_021e:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,class Jose.jwe.IJweAlgorithm> Jose.JwtSettings::encAlgorithms
    IL_0223:  ldarg.0
    IL_0224:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::.ctor()
    IL_0229:  dup
    IL_022a:  ldc.i4.0
    IL_022b:  ldstr      "A128CBC-HS256"
    IL_0230:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::Add(!0,
                                                                                                                                         !1)
    IL_0235:  dup
    IL_0236:  ldc.i4.1
    IL_0237:  ldstr      "A192CBC-HS384"
    IL_023c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::Add(!0,
                                                                                                                                         !1)
    IL_0241:  dup
    IL_0242:  ldc.i4.2
    IL_0243:  ldstr      "A256CBC-HS512"
    IL_0248:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::Add(!0,
                                                                                                                                         !1)
    IL_024d:  dup
    IL_024e:  ldc.i4.3
    IL_024f:  ldstr      "A128GCM"
    IL_0254:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::Add(!0,
                                                                                                                                         !1)
    IL_0259:  dup
    IL_025a:  ldc.i4.4
    IL_025b:  ldstr      "A192GCM"
    IL_0260:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::Add(!0,
                                                                                                                                         !1)
    IL_0265:  dup
    IL_0266:  ldc.i4.5
    IL_0267:  ldstr      "A256GCM"
    IL_026c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string>::Add(!0,
                                                                                                                                         !1)
    IL_0271:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweEncryption,string> Jose.JwtSettings::encAlgorithmsHeaderValue
    IL_0276:  ldarg.0
    IL_0277:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption>::.ctor()
    IL_027c:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweEncryption> Jose.JwtSettings::encAlgorithmsAliases
    IL_0281:  ldarg.0
    IL_0282:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::.ctor()
    IL_0287:  dup
    IL_0288:  ldc.i4.1
    IL_0289:  ldc.i4.1
    IL_028a:  newobj     instance void Jose.RsaKeyManagement::.ctor(bool)
    IL_028f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_0294:  dup
    IL_0295:  ldc.i4.2
    IL_0296:  newobj     instance void Jose.RsaOaep256KeyManagement::.ctor()
    IL_029b:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02a0:  dup
    IL_02a1:  ldc.i4.0
    IL_02a2:  ldc.i4.0
    IL_02a3:  newobj     instance void Jose.RsaKeyManagement::.ctor(bool)
    IL_02a8:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02ad:  dup
    IL_02ae:  ldc.i4.3
    IL_02af:  newobj     instance void Jose.DirectKeyManagement::.ctor()
    IL_02b4:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02b9:  dup
    IL_02ba:  ldc.i4.4
    IL_02bb:  ldc.i4     0x80
    IL_02c0:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_02c5:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02ca:  dup
    IL_02cb:  ldc.i4.5
    IL_02cc:  ldc.i4     0xc0
    IL_02d1:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_02d6:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02db:  dup
    IL_02dc:  ldc.i4.6
    IL_02dd:  ldc.i4     0x100
    IL_02e2:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_02e7:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02ec:  dup
    IL_02ed:  ldc.i4.7
    IL_02ee:  ldc.i4.1
    IL_02ef:  newobj     instance void Jose.EcdhKeyManagement::.ctor(bool)
    IL_02f4:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_02f9:  dup
    IL_02fa:  ldc.i4.8
    IL_02fb:  ldc.i4     0x80
    IL_0300:  ldc.i4     0x80
    IL_0305:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_030a:  newobj     instance void Jose.EcdhKeyManagementWithAesKeyWrap::.ctor(int32,
                                                                                   class Jose.AesKeyWrapManagement)
    IL_030f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_0314:  dup
    IL_0315:  ldc.i4.s   9
    IL_0317:  ldc.i4     0xc0
    IL_031c:  ldc.i4     0xc0
    IL_0321:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_0326:  newobj     instance void Jose.EcdhKeyManagementWithAesKeyWrap::.ctor(int32,
                                                                                   class Jose.AesKeyWrapManagement)
    IL_032b:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_0330:  dup
    IL_0331:  ldc.i4.s   10
    IL_0333:  ldc.i4     0x100
    IL_0338:  ldc.i4     0x100
    IL_033d:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_0342:  newobj     instance void Jose.EcdhKeyManagementWithAesKeyWrap::.ctor(int32,
                                                                                   class Jose.AesKeyWrapManagement)
    IL_0347:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_034c:  dup
    IL_034d:  ldc.i4.s   11
    IL_034f:  ldc.i4     0x80
    IL_0354:  ldc.i4     0x80
    IL_0359:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_035e:  newobj     instance void Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::.ctor(int32,
                                                                                           class Jose.AesKeyWrapManagement)
    IL_0363:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_0368:  dup
    IL_0369:  ldc.i4.s   12
    IL_036b:  ldc.i4     0xc0
    IL_0370:  ldc.i4     0xc0
    IL_0375:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_037a:  newobj     instance void Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::.ctor(int32,
                                                                                           class Jose.AesKeyWrapManagement)
    IL_037f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_0384:  dup
    IL_0385:  ldc.i4.s   13
    IL_0387:  ldc.i4     0x100
    IL_038c:  ldc.i4     0x100
    IL_0391:  newobj     instance void Jose.AesKeyWrapManagement::.ctor(int32)
    IL_0396:  newobj     instance void Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::.ctor(int32,
                                                                                           class Jose.AesKeyWrapManagement)
    IL_039b:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_03a0:  dup
    IL_03a1:  ldc.i4.s   14
    IL_03a3:  ldc.i4     0x80
    IL_03a8:  newobj     instance void Jose.AesGcmKeyWrapManagement::.ctor(int32)
    IL_03ad:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_03b2:  dup
    IL_03b3:  ldc.i4.s   15
    IL_03b5:  ldc.i4     0xc0
    IL_03ba:  newobj     instance void Jose.AesGcmKeyWrapManagement::.ctor(int32)
    IL_03bf:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_03c4:  dup
    IL_03c5:  ldc.i4.s   16
    IL_03c7:  ldc.i4     0x100
    IL_03cc:  newobj     instance void Jose.AesGcmKeyWrapManagement::.ctor(int32)
    IL_03d1:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement>::Add(!0,
                                                                                                                                                           !1)
    IL_03d6:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,class Jose.IKeyManagement> Jose.JwtSettings::keyAlgorithms
    IL_03db:  ldarg.0
    IL_03dc:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::.ctor()
    IL_03e1:  dup
    IL_03e2:  ldc.i4.0
    IL_03e3:  ldstr      "RSA1_5"
    IL_03e8:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_03ed:  dup
    IL_03ee:  ldc.i4.1
    IL_03ef:  ldstr      "RSA-OAEP"
    IL_03f4:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_03f9:  dup
    IL_03fa:  ldc.i4.2
    IL_03fb:  ldstr      "RSA-OAEP-256"
    IL_0400:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0405:  dup
    IL_0406:  ldc.i4.3
    IL_0407:  ldstr      "dir"
    IL_040c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0411:  dup
    IL_0412:  ldc.i4.4
    IL_0413:  ldstr      "A128KW"
    IL_0418:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_041d:  dup
    IL_041e:  ldc.i4.6
    IL_041f:  ldstr      "A256KW"
    IL_0424:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0429:  dup
    IL_042a:  ldc.i4.5
    IL_042b:  ldstr      "A192KW"
    IL_0430:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0435:  dup
    IL_0436:  ldc.i4.7
    IL_0437:  ldstr      "ECDH-ES"
    IL_043c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0441:  dup
    IL_0442:  ldc.i4.8
    IL_0443:  ldstr      "ECDH-ES+A128KW"
    IL_0448:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_044d:  dup
    IL_044e:  ldc.i4.s   9
    IL_0450:  ldstr      "ECDH-ES+A192KW"
    IL_0455:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_045a:  dup
    IL_045b:  ldc.i4.s   10
    IL_045d:  ldstr      "ECDH-ES+A256KW"
    IL_0462:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0467:  dup
    IL_0468:  ldc.i4.s   11
    IL_046a:  ldstr      "PBES2-HS256+A128KW"
    IL_046f:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0474:  dup
    IL_0475:  ldc.i4.s   12
    IL_0477:  ldstr      "PBES2-HS384+A192KW"
    IL_047c:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_0481:  dup
    IL_0482:  ldc.i4.s   13
    IL_0484:  ldstr      "PBES2-HS512+A256KW"
    IL_0489:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_048e:  dup
    IL_048f:  ldc.i4.s   14
    IL_0491:  ldstr      "A128GCMKW"
    IL_0496:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_049b:  dup
    IL_049c:  ldc.i4.s   15
    IL_049e:  ldstr      "A192GCMKW"
    IL_04a3:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_04a8:  dup
    IL_04a9:  ldc.i4.s   16
    IL_04ab:  ldstr      "A256GCMKW"
    IL_04b0:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string>::Add(!0,
                                                                                                                                        !1)
    IL_04b5:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweAlgorithm,string> Jose.JwtSettings::keyAlgorithmsHeaderValue
    IL_04ba:  ldarg.0
    IL_04bb:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm>::.ctor()
    IL_04c0:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweAlgorithm> Jose.JwtSettings::keyAlgorithmsAliases
    IL_04c5:  ldarg.0
    IL_04c6:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression>::.ctor()
    IL_04cb:  dup
    IL_04cc:  ldc.i4.0
    IL_04cd:  newobj     instance void Jose.DeflateCompression::.ctor()
    IL_04d2:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression>::Add(!0,
                                                                                                                                                           !1)
    IL_04d7:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,class Jose.ICompression> Jose.JwtSettings::compressionAlgorithms
    IL_04dc:  ldarg.0
    IL_04dd:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string>::.ctor()
    IL_04e2:  dup
    IL_04e3:  ldc.i4.0
    IL_04e4:  ldstr      "DEF"
    IL_04e9:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string>::Add(!0,
                                                                                                                                          !1)
    IL_04ee:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<valuetype Jose.JweCompression,string> Jose.JwtSettings::jweCompressionHeaderValue
    IL_04f3:  ldarg.0
    IL_04f4:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression>::.ctor()
    IL_04f9:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<string,valuetype Jose.JweCompression> Jose.JwtSettings::compressionAlgorithmsAliases
    IL_04fe:  ldarg.0
    IL_04ff:  newobj     instance void Jose.JSSerializerMapper::.ctor()
    IL_0504:  stfld      class Jose.IJsonMapper Jose.JwtSettings::jsMapper
    IL_0509:  ldarg.0
    IL_050a:  call       instance void [mscorlib]System.Object::.ctor()
    IL_050f:  ret
  } // end of method JwtSettings::.ctor

  .property instance class Jose.IJsonMapper
          JsonMapper()
  {
    .get instance class Jose.IJsonMapper Jose.JwtSettings::get_JsonMapper()
    .set instance void Jose.JwtSettings::set_JsonMapper(class Jose.IJsonMapper)
  } // end of property JwtSettings::JsonMapper
} // end of class Jose.JwtSettings

.class public auto ansi beforefieldinit Jose.DeflateCompression
       extends [mscorlib]System.Object
       implements Jose.ICompression
{
  .method public hidebysig newslot virtual final 
          instance uint8[]  Compress(uint8[] plainText) cil managed
  {
    // Code size       58 (0x3a)
    .maxstack  4
    .locals init (class [mscorlib]System.IO.MemoryStream V_0,
             class [System]System.IO.Compression.DeflateStream V_1,
             uint8[] V_2)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  ldloc.0
      IL_0007:  ldc.i4.1
      IL_0008:  newobj     instance void [System]System.IO.Compression.DeflateStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                            valuetype [System]System.IO.Compression.CompressionMode)
      IL_000d:  stloc.1
      .try
      {
        IL_000e:  ldloc.1
        IL_000f:  ldarg.1
        IL_0010:  ldc.i4.0
        IL_0011:  ldarg.1
        IL_0012:  ldlen
        IL_0013:  conv.i4
        IL_0014:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                             int32,
                                                                             int32)
        IL_0019:  leave.s    IL_0025

      }  // end .try
      finally
      {
        IL_001b:  ldloc.1
        IL_001c:  brfalse.s  IL_0024

        IL_001e:  ldloc.1
        IL_001f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0024:  endfinally
      }  // end handler
      IL_0025:  ldloc.0
      IL_0026:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_002b:  stloc.2
      IL_002c:  leave.s    IL_0038

    }  // end .try
    finally
    {
      IL_002e:  ldloc.0
      IL_002f:  brfalse.s  IL_0037

      IL_0031:  ldloc.0
      IL_0032:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0037:  endfinally
    }  // end handler
    IL_0038:  ldloc.2
    IL_0039:  ret
  } // end of method DeflateCompression::Compress

  .method public hidebysig newslot virtual final 
          instance uint8[]  Decompress(uint8[] compressedText) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  2
    .locals init (class [mscorlib]System.IO.MemoryStream V_0,
             class [mscorlib]System.IO.MemoryStream V_1,
             class [System]System.IO.Compression.DeflateStream V_2,
             uint8[] V_3)
    IL_0000:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  ldarg.1
      IL_0007:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[])
      IL_000c:  stloc.1
      .try
      {
        IL_000d:  ldloc.1
        IL_000e:  ldc.i4.0
        IL_000f:  newobj     instance void [System]System.IO.Compression.DeflateStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                              valuetype [System]System.IO.Compression.CompressionMode)
        IL_0014:  stloc.2
        .try
        {
          IL_0015:  ldloc.2
          IL_0016:  ldloc.0
          IL_0017:  callvirt   instance void [mscorlib]System.IO.Stream::CopyTo(class [mscorlib]System.IO.Stream)
          IL_001c:  leave.s    IL_0032

        }  // end .try
        finally
        {
          IL_001e:  ldloc.2
          IL_001f:  brfalse.s  IL_0027

          IL_0021:  ldloc.2
          IL_0022:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
          IL_0027:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_0028:  ldloc.1
        IL_0029:  brfalse.s  IL_0031

        IL_002b:  ldloc.1
        IL_002c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0031:  endfinally
      }  // end handler
      IL_0032:  ldloc.0
      IL_0033:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
      IL_0038:  stloc.3
      IL_0039:  leave.s    IL_0045

    }  // end .try
    finally
    {
      IL_003b:  ldloc.0
      IL_003c:  brfalse.s  IL_0044

      IL_003e:  ldloc.0
      IL_003f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0044:  endfinally
    }  // end handler
    IL_0045:  ldloc.3
    IL_0046:  ret
  } // end of method DeflateCompression::Decompress

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method DeflateCompression::.ctor

} // end of class Jose.DeflateCompression

.class interface public abstract auto ansi Jose.ICompression
{
  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Compress(uint8[] plainText) cil managed
  {
  } // end of method ICompression::Compress

  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Decompress(uint8[] compressedText) cil managed
  {
  } // end of method ICompression::Decompress

} // end of class Jose.ICompression

.class public abstract auto ansi sealed beforefieldinit Jose.AesGcm
       extends [mscorlib]System.Object
{
  .method public hidebysig static uint8[][] 
          Encrypt(uint8[] key,
                  uint8[] iv,
                  uint8[] aad,
                  uint8[] plainText) cil managed
  {
    // Code size       262 (0x106)
    .maxstack  10
    .locals init (native int V_0,
             native int V_1,
             native int V_2,
             uint8[] V_3,
             uint8[] V_4,
             valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO V_5,
             valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO V_6,
             uint8[] V_7,
             int32 V_8,
             uint32 V_9)
    IL_0000:  ldsfld     string Jose.native.BCrypt::BCRYPT_AES_ALGORITHM
    IL_0005:  ldsfld     string Jose.native.BCrypt::MS_PRIMITIVE_PROVIDER
    IL_000a:  ldsfld     string Jose.native.BCrypt::BCRYPT_CHAIN_MODE_GCM
    IL_000f:  call       native int Jose.AesGcm::OpenAlgorithmProvider(string,
                                                                       string,
                                                                       string)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldloca.s   V_1
    IL_0019:  call       native int Jose.AesGcm::ImportKey(native int,
                                                           uint8[],
                                                           native int&)
    IL_001e:  stloc.2
    IL_001f:  ldloc.0
    IL_0020:  call       int32 Jose.AesGcm::MaxAuthTagSize(native int)
    IL_0025:  newarr     [mscorlib]System.Byte
    IL_002a:  stloc.s    V_4
    IL_002c:  ldloca.s   V_5
    IL_002e:  ldarg.1
    IL_002f:  ldarg.2
    IL_0030:  ldloc.s    V_4
    IL_0032:  call       instance void Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::.ctor(uint8[],
                                                                                                       uint8[],
                                                                                                       uint8[])
    IL_0037:  ldloc.s    V_5
    IL_0039:  stloc.s    V_6
    .try
    {
      IL_003b:  ldloc.s    V_4
      IL_003d:  ldlen
      IL_003e:  conv.i4
      IL_003f:  newarr     [mscorlib]System.Byte
      IL_0044:  stloc.s    V_7
      IL_0046:  ldc.i4.0
      IL_0047:  stloc.s    V_8
      IL_0049:  ldloc.1
      IL_004a:  ldarg.3
      IL_004b:  ldarg.3
      IL_004c:  ldlen
      IL_004d:  conv.i4
      IL_004e:  ldloca.s   V_5
      IL_0050:  ldloc.s    V_7
      IL_0052:  ldloc.s    V_7
      IL_0054:  ldlen
      IL_0055:  conv.i4
      IL_0056:  ldnull
      IL_0057:  ldc.i4.0
      IL_0058:  ldloca.s   V_8
      IL_005a:  ldc.i4.0
      IL_005b:  call       uint32 Jose.native.BCrypt::BCryptEncrypt(native int,
                                                                    uint8[],
                                                                    int32,
                                                                    valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO&,
                                                                    uint8[],
                                                                    int32,
                                                                    uint8[],
                                                                    int32,
                                                                    int32&,
                                                                    uint32)
      IL_0060:  stloc.s    V_9
      IL_0062:  ldloc.s    V_9
      IL_0064:  brfalse.s  IL_007d

      IL_0066:  ldstr      "BCrypt.BCryptEncrypt() (get size) failed with stat"
      + "us code:{0}"
      IL_006b:  ldloc.s    V_9
      IL_006d:  box        [mscorlib]System.UInt32
      IL_0072:  call       string [mscorlib]System.String::Format(string,
                                                                  object)
      IL_0077:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
      IL_007c:  throw

      IL_007d:  ldloc.s    V_8
      IL_007f:  newarr     [mscorlib]System.Byte
      IL_0084:  stloc.3
      IL_0085:  ldloc.1
      IL_0086:  ldarg.3
      IL_0087:  ldarg.3
      IL_0088:  ldlen
      IL_0089:  conv.i4
      IL_008a:  ldloca.s   V_5
      IL_008c:  ldloc.s    V_7
      IL_008e:  ldloc.s    V_7
      IL_0090:  ldlen
      IL_0091:  conv.i4
      IL_0092:  ldloc.3
      IL_0093:  ldloc.3
      IL_0094:  ldlen
      IL_0095:  conv.i4
      IL_0096:  ldloca.s   V_8
      IL_0098:  ldc.i4.0
      IL_0099:  call       uint32 Jose.native.BCrypt::BCryptEncrypt(native int,
                                                                    uint8[],
                                                                    int32,
                                                                    valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO&,
                                                                    uint8[],
                                                                    int32,
                                                                    uint8[],
                                                                    int32,
                                                                    int32&,
                                                                    uint32)
      IL_009e:  stloc.s    V_9
      IL_00a0:  ldloc.s    V_9
      IL_00a2:  brfalse.s  IL_00bb

      IL_00a4:  ldstr      "BCrypt.BCryptEncrypt() failed with status code:{0}"
      IL_00a9:  ldloc.s    V_9
      IL_00ab:  box        [mscorlib]System.UInt32
      IL_00b0:  call       string [mscorlib]System.String::Format(string,
                                                                  object)
      IL_00b5:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
      IL_00ba:  throw

      IL_00bb:  ldloc.s    V_5
      IL_00bd:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbTag
      IL_00c2:  ldloc.s    V_4
      IL_00c4:  ldc.i4.0
      IL_00c5:  ldloc.s    V_5
      IL_00c7:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbTag
      IL_00cc:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::Copy(native int,
                                                                                       uint8[],
                                                                                       int32,
                                                                                       int32)
      IL_00d1:  leave.s    IL_00e1

    }  // end .try
    finally
    {
      IL_00d3:  ldloca.s   V_6
      IL_00d5:  constrained. Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
      IL_00db:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00e0:  endfinally
    }  // end handler
    IL_00e1:  ldloc.1
    IL_00e2:  call       uint32 Jose.native.BCrypt::BCryptDestroyKey(native int)
    IL_00e7:  pop
    IL_00e8:  ldloc.2
    IL_00e9:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
    IL_00ee:  ldloc.0
    IL_00ef:  ldc.i4.0
    IL_00f0:  call       uint32 Jose.native.BCrypt::BCryptCloseAlgorithmProvider(native int,
                                                                                 uint32)
    IL_00f5:  pop
    IL_00f6:  ldc.i4.2
    IL_00f7:  newarr     uint8[]
    IL_00fc:  dup
    IL_00fd:  ldc.i4.0
    IL_00fe:  ldloc.3
    IL_00ff:  stelem.ref
    IL_0100:  dup
    IL_0101:  ldc.i4.1
    IL_0102:  ldloc.s    V_4
    IL_0104:  stelem.ref
    IL_0105:  ret
  } // end of method AesGcm::Encrypt

  .method public hidebysig static uint8[] 
          Decrypt(uint8[] key,
                  uint8[] iv,
                  uint8[] aad,
                  uint8[] cipherText,
                  uint8[] authTag) cil managed
  {
    // Code size       235 (0xeb)
    .maxstack  10
    .locals init (native int V_0,
             native int V_1,
             native int V_2,
             uint8[] V_3,
             valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO V_4,
             valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO V_5,
             uint8[] V_6,
             int32 V_7,
             uint32 V_8)
    IL_0000:  ldsfld     string Jose.native.BCrypt::BCRYPT_AES_ALGORITHM
    IL_0005:  ldsfld     string Jose.native.BCrypt::MS_PRIMITIVE_PROVIDER
    IL_000a:  ldsfld     string Jose.native.BCrypt::BCRYPT_CHAIN_MODE_GCM
    IL_000f:  call       native int Jose.AesGcm::OpenAlgorithmProvider(string,
                                                                       string,
                                                                       string)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldloca.s   V_1
    IL_0019:  call       native int Jose.AesGcm::ImportKey(native int,
                                                           uint8[],
                                                           native int&)
    IL_001e:  stloc.2
    IL_001f:  ldloca.s   V_4
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  ldarg.s    authTag
    IL_0025:  call       instance void Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::.ctor(uint8[],
                                                                                                       uint8[],
                                                                                                       uint8[])
    IL_002a:  ldloc.s    V_4
    IL_002c:  stloc.s    V_5
    .try
    {
      IL_002e:  ldloc.0
      IL_002f:  call       int32 Jose.AesGcm::MaxAuthTagSize(native int)
      IL_0034:  newarr     [mscorlib]System.Byte
      IL_0039:  stloc.s    V_6
      IL_003b:  ldc.i4.0
      IL_003c:  stloc.s    V_7
      IL_003e:  ldloc.1
      IL_003f:  ldarg.3
      IL_0040:  ldarg.3
      IL_0041:  ldlen
      IL_0042:  conv.i4
      IL_0043:  ldloca.s   V_4
      IL_0045:  ldloc.s    V_6
      IL_0047:  ldloc.s    V_6
      IL_0049:  ldlen
      IL_004a:  conv.i4
      IL_004b:  ldnull
      IL_004c:  ldc.i4.0
      IL_004d:  ldloca.s   V_7
      IL_004f:  ldc.i4.0
      IL_0050:  call       uint32 Jose.native.BCrypt::BCryptDecrypt(native int,
                                                                    uint8[],
                                                                    int32,
                                                                    valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO&,
                                                                    uint8[],
                                                                    int32,
                                                                    uint8[],
                                                                    int32,
                                                                    int32&,
                                                                    int32)
      IL_0055:  stloc.s    V_8
      IL_0057:  ldloc.s    V_8
      IL_0059:  brfalse.s  IL_0072

      IL_005b:  ldstr      "BCrypt.BCryptDecrypt() (get size) failed with stat"
      + "us code: {0}"
      IL_0060:  ldloc.s    V_8
      IL_0062:  box        [mscorlib]System.UInt32
      IL_0067:  call       string [mscorlib]System.String::Format(string,
                                                                  object)
      IL_006c:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
      IL_0071:  throw

      IL_0072:  ldloc.s    V_7
      IL_0074:  newarr     [mscorlib]System.Byte
      IL_0079:  stloc.3
      IL_007a:  ldloc.1
      IL_007b:  ldarg.3
      IL_007c:  ldarg.3
      IL_007d:  ldlen
      IL_007e:  conv.i4
      IL_007f:  ldloca.s   V_4
      IL_0081:  ldloc.s    V_6
      IL_0083:  ldloc.s    V_6
      IL_0085:  ldlen
      IL_0086:  conv.i4
      IL_0087:  ldloc.3
      IL_0088:  ldloc.3
      IL_0089:  ldlen
      IL_008a:  conv.i4
      IL_008b:  ldloca.s   V_7
      IL_008d:  ldc.i4.0
      IL_008e:  call       uint32 Jose.native.BCrypt::BCryptDecrypt(native int,
                                                                    uint8[],
                                                                    int32,
                                                                    valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO&,
                                                                    uint8[],
                                                                    int32,
                                                                    uint8[],
                                                                    int32,
                                                                    int32&,
                                                                    int32)
      IL_0093:  stloc.s    V_8
      IL_0095:  ldloc.s    V_8
      IL_0097:  ldsfld     uint32 Jose.native.BCrypt::STATUS_AUTH_TAG_MISMATCH
      IL_009c:  bne.un.s   IL_00a9

      IL_009e:  ldstr      "BCrypt.BCryptDecrypt(): authentication tag mismatch"
      IL_00a3:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
      IL_00a8:  throw

      IL_00a9:  ldloc.s    V_8
      IL_00ab:  brfalse.s  IL_00c4

      IL_00ad:  ldstr      "BCrypt.BCryptDecrypt() failed with status code:{0}"
      IL_00b2:  ldloc.s    V_8
      IL_00b4:  box        [mscorlib]System.UInt32
      IL_00b9:  call       string [mscorlib]System.String::Format(string,
                                                                  object)
      IL_00be:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
      IL_00c3:  throw

      IL_00c4:  leave.s    IL_00d4

    }  // end .try
    finally
    {
      IL_00c6:  ldloca.s   V_5
      IL_00c8:  constrained. Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
      IL_00ce:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00d3:  endfinally
    }  // end handler
    IL_00d4:  ldloc.1
    IL_00d5:  call       uint32 Jose.native.BCrypt::BCryptDestroyKey(native int)
    IL_00da:  pop
    IL_00db:  ldloc.2
    IL_00dc:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
    IL_00e1:  ldloc.0
    IL_00e2:  ldc.i4.0
    IL_00e3:  call       uint32 Jose.native.BCrypt::BCryptCloseAlgorithmProvider(native int,
                                                                                 uint32)
    IL_00e8:  pop
    IL_00e9:  ldloc.3
    IL_00ea:  ret
  } // end of method AesGcm::Decrypt

  .method private hidebysig static int32 
          MaxAuthTagSize(native int hAlg) cil managed
  {
    // Code size       49 (0x31)
    .maxstack  5
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string Jose.native.BCrypt::BCRYPT_AUTH_TAG_LENGTH
    IL_0006:  call       uint8[] Jose.AesGcm::GetProperty(native int,
                                                          string)
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.4
    IL_000d:  newarr     [mscorlib]System.Byte
    IL_0012:  dup
    IL_0013:  ldc.i4.0
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.4
    IL_0016:  ldelem.u1
    IL_0017:  stelem.i1
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.5
    IL_001c:  ldelem.u1
    IL_001d:  stelem.i1
    IL_001e:  dup
    IL_001f:  ldc.i4.2
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.6
    IL_0022:  ldelem.u1
    IL_0023:  stelem.i1
    IL_0024:  dup
    IL_0025:  ldc.i4.3
    IL_0026:  ldloc.0
    IL_0027:  ldc.i4.7
    IL_0028:  ldelem.u1
    IL_0029:  stelem.i1
    IL_002a:  ldc.i4.0
    IL_002b:  call       int32 [mscorlib]System.BitConverter::ToInt32(uint8[],
                                                                      int32)
    IL_0030:  ret
  } // end of method AesGcm::MaxAuthTagSize

  .method private hidebysig static native int 
          OpenAlgorithmProvider(string alg,
                                string provider,
                                string chainingMode) cil managed
  {
    // Code size       98 (0x62)
    .maxstack  5
    .locals init (native int V_0,
             uint32 V_1,
             uint8[] V_2)
    IL_0000:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.0
    IL_000b:  call       uint32 Jose.native.BCrypt::BCryptOpenAlgorithmProvider(native int&,
                                                                                string,
                                                                                string,
                                                                                uint32)
    IL_0010:  stloc.1
    IL_0011:  ldloc.1
    IL_0012:  brfalse.s  IL_002a

    IL_0014:  ldstr      "BCrypt.BCryptOpenAlgorithmProvider() failed with s"
    + "tatus code:{0}"
    IL_0019:  ldloc.1
    IL_001a:  box        [mscorlib]System.UInt32
    IL_001f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0024:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0029:  throw

    IL_002a:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Unicode()
    IL_002f:  ldarg.2
    IL_0030:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0035:  stloc.2
    IL_0036:  ldloc.0
    IL_0037:  ldsfld     string Jose.native.BCrypt::BCRYPT_CHAINING_MODE
    IL_003c:  ldloc.2
    IL_003d:  ldloc.2
    IL_003e:  ldlen
    IL_003f:  conv.i4
    IL_0040:  ldc.i4.0
    IL_0041:  call       uint32 Jose.native.BCrypt::BCryptSetAlgorithmProperty(native int,
                                                                               string,
                                                                               uint8[],
                                                                               int32,
                                                                               int32)
    IL_0046:  stloc.1
    IL_0047:  ldloc.1
    IL_0048:  brfalse.s  IL_0060

    IL_004a:  ldstr      "BCrypt.BCryptSetAlgorithmProperty(BCrypt.BCRYPT_CH"
    + "AINING_MODE, BCrypt.BCRYPT_CHAIN_MODE_GCM) failed with status code:{0}"
    IL_004f:  ldloc.1
    IL_0050:  box        [mscorlib]System.UInt32
    IL_0055:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_005a:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_005f:  throw

    IL_0060:  ldloc.0
    IL_0061:  ret
  } // end of method AesGcm::OpenAlgorithmProvider

  .method private hidebysig static native int 
          ImportKey(native int hAlg,
                    uint8[] key,
                    [out] native int& hKey) cil managed
  {
    // Code size       121 (0x79)
    .maxstack  9
    .locals init (int32 V_0,
             native int V_1,
             uint8[] V_2,
             uint32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     string Jose.native.BCrypt::BCRYPT_OBJECT_LENGTH
    IL_0006:  call       uint8[] Jose.AesGcm::GetProperty(native int,
                                                          string)
    IL_000b:  ldc.i4.0
    IL_000c:  call       int32 [mscorlib]System.BitConverter::ToInt32(uint8[],
                                                                      int32)
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
    IL_0018:  stloc.1
    IL_0019:  ldc.i4.4
    IL_001a:  newarr     uint8[]
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldsfld     uint8[] Jose.native.BCrypt::BCRYPT_KEY_DATA_BLOB_MAGIC
    IL_0026:  stelem.ref
    IL_0027:  dup
    IL_0028:  ldc.i4.1
    IL_0029:  ldc.i4.1
    IL_002a:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_002f:  stelem.ref
    IL_0030:  dup
    IL_0031:  ldc.i4.2
    IL_0032:  ldarg.1
    IL_0033:  ldlen
    IL_0034:  conv.i4
    IL_0035:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.3
    IL_003d:  ldarg.1
    IL_003e:  stelem.ref
    IL_003f:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_0044:  stloc.2
    IL_0045:  ldarg.0
    IL_0046:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_004b:  ldsfld     string Jose.native.BCrypt::BCRYPT_KEY_DATA_BLOB
    IL_0050:  ldarg.2
    IL_0051:  ldloc.1
    IL_0052:  ldloc.0
    IL_0053:  ldloc.2
    IL_0054:  ldloc.2
    IL_0055:  ldlen
    IL_0056:  conv.i4
    IL_0057:  ldc.i4.0
    IL_0058:  call       uint32 Jose.native.BCrypt::BCryptImportKey(native int,
                                                                    native int,
                                                                    string,
                                                                    native int&,
                                                                    native int,
                                                                    int32,
                                                                    uint8[],
                                                                    int32,
                                                                    uint32)
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  brfalse.s  IL_0077

    IL_0061:  ldstr      "BCrypt.BCryptImportKey() failed with status code:{0}"
    IL_0066:  ldloc.3
    IL_0067:  box        [mscorlib]System.UInt32
    IL_006c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0071:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0076:  throw

    IL_0077:  ldloc.1
    IL_0078:  ret
  } // end of method AesGcm::ImportKey

  .method private hidebysig static uint8[] 
          GetProperty(native int hAlg,
                      string name) cil managed
  {
    // Code size       89 (0x59)
    .maxstack  6
    .locals init (int32 V_0,
             uint32 V_1,
             uint8[] V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  ldnull
    IL_0005:  ldc.i4.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  ldc.i4.0
    IL_0009:  call       uint32 Jose.native.BCrypt::BCryptGetProperty(native int,
                                                                      string,
                                                                      uint8[],
                                                                      int32,
                                                                      int32&,
                                                                      uint32)
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  brfalse.s  IL_0028

    IL_0012:  ldstr      "BCrypt.BCryptGetProperty() (get size) failed with "
    + "status code:{0}"
    IL_0017:  ldloc.1
    IL_0018:  box        [mscorlib]System.UInt32
    IL_001d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0022:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0027:  throw

    IL_0028:  ldloc.0
    IL_0029:  newarr     [mscorlib]System.Byte
    IL_002e:  stloc.2
    IL_002f:  ldarg.0
    IL_0030:  ldarg.1
    IL_0031:  ldloc.2
    IL_0032:  ldloc.2
    IL_0033:  ldlen
    IL_0034:  conv.i4
    IL_0035:  ldloca.s   V_0
    IL_0037:  ldc.i4.0
    IL_0038:  call       uint32 Jose.native.BCrypt::BCryptGetProperty(native int,
                                                                      string,
                                                                      uint8[],
                                                                      int32,
                                                                      int32&,
                                                                      uint32)
    IL_003d:  stloc.1
    IL_003e:  ldloc.1
    IL_003f:  brfalse.s  IL_0057

    IL_0041:  ldstr      "BCrypt.BCryptGetProperty() failed with status code"
    + ":{0}"
    IL_0046:  ldloc.1
    IL_0047:  box        [mscorlib]System.UInt32
    IL_004c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0051:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0056:  throw

    IL_0057:  ldloc.2
    IL_0058:  ret
  } // end of method AesGcm::GetProperty

} // end of class Jose.AesGcm

.class public abstract auto ansi sealed beforefieldinit Jose.AesKeyWrap
       extends [mscorlib]System.Object
{
  .field private static initonly uint8[] DefaultIV
  .method public hidebysig static uint8[] 
          Wrap(uint8[] cek,
               uint8[] kek) cil managed
  {
    // Code size       254 (0xfe)
    .maxstack  8
    .locals init (uint8[] V_0,
             uint8[][] V_1,
             int64 V_2,
             uint8[][] V_3,
             int64 V_4,
             int64 V_5,
             int64 V_6,
             uint8[] V_7,
             int64 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x80
    IL_0006:  conv.i8
    IL_0007:  ldstr      "AesKeyWrap.Wrap() expects content length not less "
    + "than 128 bits, but was {0}"
    IL_000c:  ldc.i4.1
    IL_000d:  newarr     [mscorlib]System.Object
    IL_0012:  dup
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.0
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  conv.i8
    IL_0018:  ldc.i4.8
    IL_0019:  conv.i8
    IL_001a:  mul
    IL_001b:  box        [mscorlib]System.Int64
    IL_0020:  stelem.ref
    IL_0021:  call       void Jose.Ensure::MinBitSize(uint8[],
                                                      int64,
                                                      string,
                                                      object[])
    IL_0026:  ldarg.0
    IL_0027:  ldlen
    IL_0028:  conv.i4
    IL_0029:  ldc.i4.8
    IL_002a:  ldstr      "AesKeyWrap.Wrap() expects content length to be div"
    + "isable by 8, but was given a content of {0} bit size."
    IL_002f:  ldc.i4.1
    IL_0030:  newarr     [mscorlib]System.Object
    IL_0035:  dup
    IL_0036:  ldc.i4.0
    IL_0037:  ldarg.0
    IL_0038:  ldlen
    IL_0039:  conv.i4
    IL_003a:  conv.i8
    IL_003b:  ldc.i4.8
    IL_003c:  conv.i8
    IL_003d:  mul
    IL_003e:  box        [mscorlib]System.Int64
    IL_0043:  stelem.ref
    IL_0044:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_0049:  ldsfld     uint8[] Jose.AesKeyWrap::DefaultIV
    IL_004e:  stloc.0
    IL_004f:  ldarg.0
    IL_0050:  ldc.i4.8
    IL_0051:  call       uint8[][] Jose.Arrays::Slice(uint8[],
                                                      int32)
    IL_0056:  stloc.1
    IL_0057:  ldloc.1
    IL_0058:  ldlen
    IL_0059:  conv.i4
    IL_005a:  conv.i8
    IL_005b:  stloc.2
    IL_005c:  ldc.i4.0
    IL_005d:  conv.i8
    IL_005e:  stloc.s    V_4
    IL_0060:  br.s       IL_00c3

    IL_0062:  ldc.i4.0
    IL_0063:  conv.i8
    IL_0064:  stloc.s    V_5
    IL_0066:  br.s       IL_00b7

    IL_0068:  ldloc.2
    IL_0069:  ldloc.s    V_4
    IL_006b:  mul
    IL_006c:  ldloc.s    V_5
    IL_006e:  add
    IL_006f:  ldc.i4.1
    IL_0070:  conv.i8
    IL_0071:  add
    IL_0072:  stloc.s    V_6
    IL_0074:  ldarg.1
    IL_0075:  ldc.i4.2
    IL_0076:  newarr     uint8[]
    IL_007b:  dup
    IL_007c:  ldc.i4.0
    IL_007d:  ldloc.0
    IL_007e:  stelem.ref
    IL_007f:  dup
    IL_0080:  ldc.i4.1
    IL_0081:  ldloc.1
    IL_0082:  ldloc.s    V_5
    IL_0084:  conv.ovf.i
    IL_0085:  ldelem.ref
    IL_0086:  stelem.ref
    IL_0087:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_008c:  call       uint8[] Jose.AesKeyWrap::AesEnc(uint8[],
                                                         uint8[])
    IL_0091:  stloc.s    V_7
    IL_0093:  ldloc.s    V_7
    IL_0095:  call       uint8[] Jose.Arrays::FirstHalf(uint8[])
    IL_009a:  stloc.0
    IL_009b:  ldloc.1
    IL_009c:  ldloc.s    V_5
    IL_009e:  conv.ovf.i
    IL_009f:  ldloc.s    V_7
    IL_00a1:  call       uint8[] Jose.Arrays::SecondHalf(uint8[])
    IL_00a6:  stelem.ref
    IL_00a7:  ldloc.0
    IL_00a8:  ldloc.s    V_6
    IL_00aa:  call       uint8[] Jose.Arrays::Xor(uint8[],
                                                  int64)
    IL_00af:  stloc.0
    IL_00b0:  ldloc.s    V_5
    IL_00b2:  ldc.i4.1
    IL_00b3:  conv.i8
    IL_00b4:  add
    IL_00b5:  stloc.s    V_5
    IL_00b7:  ldloc.s    V_5
    IL_00b9:  ldloc.2
    IL_00ba:  blt.s      IL_0068

    IL_00bc:  ldloc.s    V_4
    IL_00be:  ldc.i4.1
    IL_00bf:  conv.i8
    IL_00c0:  add
    IL_00c1:  stloc.s    V_4
    IL_00c3:  ldloc.s    V_4
    IL_00c5:  ldc.i4.6
    IL_00c6:  conv.i8
    IL_00c7:  blt.s      IL_0062

    IL_00c9:  ldloc.2
    IL_00ca:  ldc.i4.1
    IL_00cb:  conv.i8
    IL_00cc:  add
    IL_00cd:  conv.ovf.i
    IL_00ce:  newarr     uint8[]
    IL_00d3:  stloc.3
    IL_00d4:  ldloc.3
    IL_00d5:  ldc.i4.0
    IL_00d6:  ldloc.0
    IL_00d7:  stelem.ref
    IL_00d8:  ldc.i4.1
    IL_00d9:  conv.i8
    IL_00da:  stloc.s    V_8
    IL_00dc:  br.s       IL_00f2

    IL_00de:  ldloc.3
    IL_00df:  ldloc.s    V_8
    IL_00e1:  conv.ovf.i
    IL_00e2:  ldloc.1
    IL_00e3:  ldloc.s    V_8
    IL_00e5:  ldc.i4.1
    IL_00e6:  conv.i8
    IL_00e7:  sub
    IL_00e8:  conv.ovf.i
    IL_00e9:  ldelem.ref
    IL_00ea:  stelem.ref
    IL_00eb:  ldloc.s    V_8
    IL_00ed:  ldc.i4.1
    IL_00ee:  conv.i8
    IL_00ef:  add
    IL_00f0:  stloc.s    V_8
    IL_00f2:  ldloc.s    V_8
    IL_00f4:  ldloc.2
    IL_00f5:  ble.s      IL_00de

    IL_00f7:  ldloc.3
    IL_00f8:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_00fd:  ret
  } // end of method AesKeyWrap::Wrap

  .method public hidebysig static uint8[] 
          Unwrap(uint8[] encryptedCek,
                 uint8[] kek) cil managed
  {
    // Code size       272 (0x110)
    .maxstack  8
    .locals init (uint8[][] V_0,
             uint8[] V_1,
             uint8[][] V_2,
             int64 V_3,
             int32 V_4,
             int64 V_5,
             int64 V_6,
             int64 V_7,
             uint8[] V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x80
    IL_0006:  conv.i8
    IL_0007:  ldstr      "AesKeyWrap.Unwrap() expects content length not les"
    + "s than 128 bits, but was {0}"
    IL_000c:  ldc.i4.1
    IL_000d:  newarr     [mscorlib]System.Object
    IL_0012:  dup
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.0
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  conv.i8
    IL_0018:  ldc.i4.8
    IL_0019:  conv.i8
    IL_001a:  mul
    IL_001b:  box        [mscorlib]System.Int64
    IL_0020:  stelem.ref
    IL_0021:  call       void Jose.Ensure::MinBitSize(uint8[],
                                                      int64,
                                                      string,
                                                      object[])
    IL_0026:  ldarg.0
    IL_0027:  ldlen
    IL_0028:  conv.i4
    IL_0029:  ldc.i4.8
    IL_002a:  ldstr      "AesKeyWrap.Unwrap() expects content length to be d"
    + "ivisable by 8, but was given a content of {0} bit size."
    IL_002f:  ldc.i4.1
    IL_0030:  newarr     [mscorlib]System.Object
    IL_0035:  dup
    IL_0036:  ldc.i4.0
    IL_0037:  ldarg.0
    IL_0038:  ldlen
    IL_0039:  conv.i4
    IL_003a:  conv.i8
    IL_003b:  ldc.i4.8
    IL_003c:  conv.i8
    IL_003d:  mul
    IL_003e:  box        [mscorlib]System.Int64
    IL_0043:  stelem.ref
    IL_0044:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_0049:  ldarg.0
    IL_004a:  ldc.i4.8
    IL_004b:  call       uint8[][] Jose.Arrays::Slice(uint8[],
                                                      int32)
    IL_0050:  stloc.0
    IL_0051:  ldloc.0
    IL_0052:  ldc.i4.0
    IL_0053:  ldelem.ref
    IL_0054:  stloc.1
    IL_0055:  ldloc.0
    IL_0056:  ldlen
    IL_0057:  conv.i4
    IL_0058:  ldc.i4.1
    IL_0059:  sub
    IL_005a:  newarr     uint8[]
    IL_005f:  stloc.2
    IL_0060:  ldc.i4.1
    IL_0061:  stloc.s    V_4
    IL_0063:  br.s       IL_0075

    IL_0065:  ldloc.2
    IL_0066:  ldloc.s    V_4
    IL_0068:  ldc.i4.1
    IL_0069:  sub
    IL_006a:  ldloc.0
    IL_006b:  ldloc.s    V_4
    IL_006d:  ldelem.ref
    IL_006e:  stelem.ref
    IL_006f:  ldloc.s    V_4
    IL_0071:  ldc.i4.1
    IL_0072:  add
    IL_0073:  stloc.s    V_4
    IL_0075:  ldloc.s    V_4
    IL_0077:  ldloc.0
    IL_0078:  ldlen
    IL_0079:  conv.i4
    IL_007a:  blt.s      IL_0065

    IL_007c:  ldloc.2
    IL_007d:  ldlen
    IL_007e:  conv.i4
    IL_007f:  conv.i8
    IL_0080:  stloc.3
    IL_0081:  ldc.i4.5
    IL_0082:  conv.i8
    IL_0083:  stloc.s    V_5
    IL_0085:  br.s       IL_00eb

    IL_0087:  ldloc.3
    IL_0088:  ldc.i4.1
    IL_0089:  conv.i8
    IL_008a:  sub
    IL_008b:  stloc.s    V_6
    IL_008d:  br.s       IL_00de

    IL_008f:  ldloc.3
    IL_0090:  ldloc.s    V_5
    IL_0092:  mul
    IL_0093:  ldloc.s    V_6
    IL_0095:  add
    IL_0096:  ldc.i4.1
    IL_0097:  conv.i8
    IL_0098:  add
    IL_0099:  stloc.s    V_7
    IL_009b:  ldloc.1
    IL_009c:  ldloc.s    V_7
    IL_009e:  call       uint8[] Jose.Arrays::Xor(uint8[],
                                                  int64)
    IL_00a3:  stloc.1
    IL_00a4:  ldarg.1
    IL_00a5:  ldc.i4.2
    IL_00a6:  newarr     uint8[]
    IL_00ab:  dup
    IL_00ac:  ldc.i4.0
    IL_00ad:  ldloc.1
    IL_00ae:  stelem.ref
    IL_00af:  dup
    IL_00b0:  ldc.i4.1
    IL_00b1:  ldloc.2
    IL_00b2:  ldloc.s    V_6
    IL_00b4:  conv.ovf.i
    IL_00b5:  ldelem.ref
    IL_00b6:  stelem.ref
    IL_00b7:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_00bc:  call       uint8[] Jose.AesKeyWrap::AesDec(uint8[],
                                                         uint8[])
    IL_00c1:  stloc.s    V_8
    IL_00c3:  ldloc.s    V_8
    IL_00c5:  call       uint8[] Jose.Arrays::FirstHalf(uint8[])
    IL_00ca:  stloc.1
    IL_00cb:  ldloc.2
    IL_00cc:  ldloc.s    V_6
    IL_00ce:  conv.ovf.i
    IL_00cf:  ldloc.s    V_8
    IL_00d1:  call       uint8[] Jose.Arrays::SecondHalf(uint8[])
    IL_00d6:  stelem.ref
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  ldc.i4.1
    IL_00da:  conv.i8
    IL_00db:  sub
    IL_00dc:  stloc.s    V_6
    IL_00de:  ldloc.s    V_6
    IL_00e0:  ldc.i4.0
    IL_00e1:  conv.i8
    IL_00e2:  bge.s      IL_008f

    IL_00e4:  ldloc.s    V_5
    IL_00e6:  ldc.i4.1
    IL_00e7:  conv.i8
    IL_00e8:  sub
    IL_00e9:  stloc.s    V_5
    IL_00eb:  ldloc.s    V_5
    IL_00ed:  ldc.i4.0
    IL_00ee:  conv.i8
    IL_00ef:  bge.s      IL_0087

    IL_00f1:  ldsfld     uint8[] Jose.AesKeyWrap::DefaultIV
    IL_00f6:  ldloc.1
    IL_00f7:  call       bool Jose.Arrays::ConstantTimeEquals(uint8[],
                                                              uint8[])
    IL_00fc:  brtrue.s   IL_0109

    IL_00fe:  ldstr      "AesKeyWrap integrity check failed."
    IL_0103:  newobj     instance void Jose.IntegrityException::.ctor(string)
    IL_0108:  throw

    IL_0109:  ldloc.2
    IL_010a:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_010f:  ret
  } // end of method AesKeyWrap::Unwrap

  .method private hidebysig static uint8[] 
          AesDec(uint8[] sharedKey,
                 uint8[] cipherText) cil managed
  {
    // Code size       131 (0x83)
    .maxstack  4
    .locals init (class [mscorlib]System.Security.Cryptography.Aes V_0,
             class [mscorlib]System.IO.MemoryStream V_1,
             class [mscorlib]System.Security.Cryptography.ICryptoTransform V_2,
             class [mscorlib]System.Security.Cryptography.CryptoStream V_3,
             uint8[] V_4)
    IL_0000:  newobj     instance void [System.Core]System.Security.Cryptography.AesCryptoServiceProvider::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
      IL_000d:  ldloc.0
      IL_000e:  ldc.i4.2
      IL_000f:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Mode(valuetype [mscorlib]System.Security.Cryptography.CipherMode)
      IL_0014:  ldloc.0
      IL_0015:  ldc.i4.1
      IL_0016:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Padding(valuetype [mscorlib]System.Security.Cryptography.PaddingMode)
      IL_001b:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_0020:  stloc.1
      .try
      {
        IL_0021:  ldloc.0
        IL_0022:  ldloc.0
        IL_0023:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_Key()
        IL_0028:  ldloc.0
        IL_0029:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_IV()
        IL_002e:  callvirt   instance class [mscorlib]System.Security.Cryptography.ICryptoTransform [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateDecryptor(uint8[],
                                                                                                                                                                               uint8[])
        IL_0033:  stloc.2
        .try
        {
          IL_0034:  ldloc.1
          IL_0035:  ldloc.2
          IL_0036:  ldc.i4.1
          IL_0037:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptoStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                                        class [mscorlib]System.Security.Cryptography.ICryptoTransform,
                                                                                                        valuetype [mscorlib]System.Security.Cryptography.CryptoStreamMode)
          IL_003c:  stloc.3
          .try
          {
            IL_003d:  ldloc.3
            IL_003e:  ldarg.1
            IL_003f:  ldc.i4.0
            IL_0040:  ldarg.1
            IL_0041:  ldlen
            IL_0042:  conv.i4
            IL_0043:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                                 int32,
                                                                                 int32)
            IL_0048:  ldloc.3
            IL_0049:  callvirt   instance void [mscorlib]System.Security.Cryptography.CryptoStream::FlushFinalBlock()
            IL_004e:  ldloc.1
            IL_004f:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
            IL_0054:  stloc.s    V_4
            IL_0056:  leave.s    IL_0080

          }  // end .try
          finally
          {
            IL_0058:  ldloc.3
            IL_0059:  brfalse.s  IL_0061

            IL_005b:  ldloc.3
            IL_005c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
            IL_0061:  endfinally
          }  // end handler
        }  // end .try
        finally
        {
          IL_0062:  ldloc.2
          IL_0063:  brfalse.s  IL_006b

          IL_0065:  ldloc.2
          IL_0066:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
          IL_006b:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_006c:  ldloc.1
        IL_006d:  brfalse.s  IL_0075

        IL_006f:  ldloc.1
        IL_0070:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0075:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0076:  ldloc.0
      IL_0077:  brfalse.s  IL_007f

      IL_0079:  ldloc.0
      IL_007a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_007f:  endfinally
    }  // end handler
    IL_0080:  ldloc.s    V_4
    IL_0082:  ret
  } // end of method AesKeyWrap::AesDec

  .method private hidebysig static uint8[] 
          AesEnc(uint8[] sharedKey,
                 uint8[] plainText) cil managed
  {
    // Code size       131 (0x83)
    .maxstack  4
    .locals init (class [mscorlib]System.Security.Cryptography.Aes V_0,
             class [mscorlib]System.IO.MemoryStream V_1,
             class [mscorlib]System.Security.Cryptography.ICryptoTransform V_2,
             class [mscorlib]System.Security.Cryptography.CryptoStream V_3,
             uint8[] V_4)
    IL_0000:  newobj     instance void [System.Core]System.Security.Cryptography.AesCryptoServiceProvider::.ctor()
    IL_0005:  stloc.0
    .try
    {
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
      IL_000d:  ldloc.0
      IL_000e:  ldc.i4.2
      IL_000f:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Mode(valuetype [mscorlib]System.Security.Cryptography.CipherMode)
      IL_0014:  ldloc.0
      IL_0015:  ldc.i4.1
      IL_0016:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Padding(valuetype [mscorlib]System.Security.Cryptography.PaddingMode)
      IL_001b:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_0020:  stloc.1
      .try
      {
        IL_0021:  ldloc.0
        IL_0022:  ldloc.0
        IL_0023:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_Key()
        IL_0028:  ldloc.0
        IL_0029:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_IV()
        IL_002e:  callvirt   instance class [mscorlib]System.Security.Cryptography.ICryptoTransform [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateEncryptor(uint8[],
                                                                                                                                                                               uint8[])
        IL_0033:  stloc.2
        .try
        {
          IL_0034:  ldloc.1
          IL_0035:  ldloc.2
          IL_0036:  ldc.i4.1
          IL_0037:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptoStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                                        class [mscorlib]System.Security.Cryptography.ICryptoTransform,
                                                                                                        valuetype [mscorlib]System.Security.Cryptography.CryptoStreamMode)
          IL_003c:  stloc.3
          .try
          {
            IL_003d:  ldloc.3
            IL_003e:  ldarg.1
            IL_003f:  ldc.i4.0
            IL_0040:  ldarg.1
            IL_0041:  ldlen
            IL_0042:  conv.i4
            IL_0043:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                                 int32,
                                                                                 int32)
            IL_0048:  ldloc.3
            IL_0049:  callvirt   instance void [mscorlib]System.Security.Cryptography.CryptoStream::FlushFinalBlock()
            IL_004e:  ldloc.1
            IL_004f:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
            IL_0054:  stloc.s    V_4
            IL_0056:  leave.s    IL_0080

          }  // end .try
          finally
          {
            IL_0058:  ldloc.3
            IL_0059:  brfalse.s  IL_0061

            IL_005b:  ldloc.3
            IL_005c:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
            IL_0061:  endfinally
          }  // end handler
        }  // end .try
        finally
        {
          IL_0062:  ldloc.2
          IL_0063:  brfalse.s  IL_006b

          IL_0065:  ldloc.2
          IL_0066:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
          IL_006b:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_006c:  ldloc.1
        IL_006d:  brfalse.s  IL_0075

        IL_006f:  ldloc.1
        IL_0070:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0075:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0076:  ldloc.0
      IL_0077:  brfalse.s  IL_007f

      IL_0079:  ldloc.0
      IL_007a:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_007f:  endfinally
    }  // end handler
    IL_0080:  ldloc.s    V_4
    IL_0082:  ret
  } // end of method AesKeyWrap::AesEnc

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.i4.8
    IL_0001:  newarr     [mscorlib]System.Byte
    IL_0006:  dup
    IL_0007:  ldtoken    field int64 '<PrivateImplementationDetails>'::'5DBC1A420B61F594A834C83E3DDC229C8AB77FDC'
    IL_000c:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0011:  stsfld     uint8[] Jose.AesKeyWrap::DefaultIV
    IL_0016:  ret
  } // end of method AesKeyWrap::.cctor

} // end of class Jose.AesKeyWrap

.class public auto ansi beforefieldinit Jose.ConcatKDF
       extends [mscorlib]System.Object
{
  .method public hidebysig static uint8[] 
          DeriveKey(class [System.Core]System.Security.Cryptography.CngKey externalPubKey,
                    class [System.Core]System.Security.Cryptography.CngKey privateKey,
                    int32 keyBitLength,
                    uint8[] algorithmId,
                    uint8[] partyVInfo,
                    uint8[] partyUInfo,
                    uint8[] suppPubInfo) cil managed
  {
    // Code size       282 (0x11a)
    .maxstack  7
    .locals init (class [System.Core]System.Security.Cryptography.ECDiffieHellmanCng V_0,
             class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle V_1,
             class Jose.native.NCrypt/NCryptBuffer V_2,
             class Jose.native.NCrypt/NCryptBuffer V_3,
             class Jose.native.NCrypt/NCryptBuffer V_4,
             class Jose.native.NCrypt/NCryptBuffer V_5,
             class Jose.native.NCrypt/NCryptBufferDesc V_6,
             uint32 V_7,
             uint32 V_8,
             uint8[] V_9,
             uint8[] V_10)
    IL_0000:  ldarg.1
    IL_0001:  newobj     instance void [System.Core]System.Security.Cryptography.ECDiffieHellmanCng::.ctor(class [System.Core]System.Security.Cryptography.CngKey)
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  ldloc.0
      IL_0008:  ldarg.0
      IL_0009:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle [System.Core]System.Security.Cryptography.ECDiffieHellmanCng::DeriveSecretAgreementHandle(class [System.Core]System.Security.Cryptography.CngKey)
      IL_000e:  stloc.1
      .try
      {
        IL_000f:  ldc.i4.8
        IL_0010:  ldarg.3
        IL_0011:  newobj     instance void Jose.native.NCrypt/NCryptBuffer::.ctor(uint32,
                                                                                  uint8[])
        IL_0016:  stloc.2
        .try
        {
          IL_0017:  ldc.i4.s   10
          IL_0019:  ldarg.s    partyVInfo
          IL_001b:  newobj     instance void Jose.native.NCrypt/NCryptBuffer::.ctor(uint32,
                                                                                    uint8[])
          IL_0020:  stloc.3
          .try
          {
            IL_0021:  ldc.i4.s   9
            IL_0023:  ldarg.s    partyUInfo
            IL_0025:  newobj     instance void Jose.native.NCrypt/NCryptBuffer::.ctor(uint32,
                                                                                      uint8[])
            IL_002a:  stloc.s    V_4
            .try
            {
              IL_002c:  ldc.i4.s   11
              IL_002e:  ldarg.s    suppPubInfo
              IL_0030:  newobj     instance void Jose.native.NCrypt/NCryptBuffer::.ctor(uint32,
                                                                                        uint8[])
              IL_0035:  stloc.s    V_5
              .try
              {
                IL_0037:  ldc.i4.4
                IL_0038:  newarr     Jose.native.NCrypt/NCryptBuffer
                IL_003d:  dup
                IL_003e:  ldc.i4.0
                IL_003f:  ldloc.2
                IL_0040:  stelem.ref
                IL_0041:  dup
                IL_0042:  ldc.i4.1
                IL_0043:  ldloc.3
                IL_0044:  stelem.ref
                IL_0045:  dup
                IL_0046:  ldc.i4.2
                IL_0047:  ldloc.s    V_4
                IL_0049:  stelem.ref
                IL_004a:  dup
                IL_004b:  ldc.i4.3
                IL_004c:  ldloc.s    V_5
                IL_004e:  stelem.ref
                IL_004f:  newobj     instance void Jose.native.NCrypt/NCryptBufferDesc::.ctor(class Jose.native.NCrypt/NCryptBuffer[])
                IL_0054:  stloc.s    V_6
                .try
                {
                  IL_0056:  ldloc.1
                  IL_0057:  ldstr      "SP800_56A_CONCAT"
                  IL_005c:  ldloc.s    V_6
                  IL_005e:  ldnull
                  IL_005f:  ldc.i4.0
                  IL_0060:  ldloca.s   V_7
                  IL_0062:  ldc.i4.0
                  IL_0063:  call       uint32 Jose.native.NCrypt::NCryptDeriveKey(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle,
                                                                                  string,
                                                                                  class Jose.native.NCrypt/NCryptBufferDesc,
                                                                                  uint8[],
                                                                                  uint32,
                                                                                  uint32&,
                                                                                  uint32)
                  IL_0068:  stloc.s    V_8
                  IL_006a:  ldloc.s    V_8
                  IL_006c:  brfalse.s  IL_0085

                  IL_006e:  ldstr      "NCrypt.NCryptDeriveKey() failed with status code:{0}"
                  IL_0073:  ldloc.s    V_8
                  IL_0075:  box        [mscorlib]System.UInt32
                  IL_007a:  call       string [mscorlib]System.String::Format(string,
                                                                              object)
                  IL_007f:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
                  IL_0084:  throw

                  IL_0085:  ldloc.s    V_7
                  IL_0087:  newarr     [mscorlib]System.Byte
                  IL_008c:  stloc.s    V_9
                  IL_008e:  ldloc.1
                  IL_008f:  ldstr      "SP800_56A_CONCAT"
                  IL_0094:  ldloc.s    V_6
                  IL_0096:  ldloc.s    V_9
                  IL_0098:  ldloc.s    V_7
                  IL_009a:  ldloca.s   V_7
                  IL_009c:  ldc.i4.0
                  IL_009d:  call       uint32 Jose.native.NCrypt::NCryptDeriveKey(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle,
                                                                                  string,
                                                                                  class Jose.native.NCrypt/NCryptBufferDesc,
                                                                                  uint8[],
                                                                                  uint32,
                                                                                  uint32&,
                                                                                  uint32)
                  IL_00a2:  stloc.s    V_8
                  IL_00a4:  ldloc.s    V_8
                  IL_00a6:  brfalse.s  IL_00bf

                  IL_00a8:  ldstr      "NCrypt.NCryptDeriveKey() failed with status code:{0}"
                  IL_00ad:  ldloc.s    V_8
                  IL_00af:  box        [mscorlib]System.UInt32
                  IL_00b4:  call       string [mscorlib]System.String::Format(string,
                                                                              object)
                  IL_00b9:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
                  IL_00be:  throw

                  IL_00bf:  ldloc.s    V_9
                  IL_00c1:  ldarg.2
                  IL_00c2:  call       uint8[] Jose.Arrays::LeftmostBits(uint8[],
                                                                         int32)
                  IL_00c7:  stloc.s    V_10
                  IL_00c9:  leave.s    IL_0117

                }  // end .try
                finally
                {
                  IL_00cb:  ldloc.s    V_6
                  IL_00cd:  brfalse.s  IL_00d6

                  IL_00cf:  ldloc.s    V_6
                  IL_00d1:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
                  IL_00d6:  endfinally
                }  // end handler
              }  // end .try
              finally
              {
                IL_00d7:  ldloc.s    V_5
                IL_00d9:  brfalse.s  IL_00e2

                IL_00db:  ldloc.s    V_5
                IL_00dd:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
                IL_00e2:  endfinally
              }  // end handler
            }  // end .try
            finally
            {
              IL_00e3:  ldloc.s    V_4
              IL_00e5:  brfalse.s  IL_00ee

              IL_00e7:  ldloc.s    V_4
              IL_00e9:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
              IL_00ee:  endfinally
            }  // end handler
          }  // end .try
          finally
          {
            IL_00ef:  ldloc.3
            IL_00f0:  brfalse.s  IL_00f8

            IL_00f2:  ldloc.3
            IL_00f3:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
            IL_00f8:  endfinally
          }  // end handler
        }  // end .try
        finally
        {
          IL_00f9:  ldloc.2
          IL_00fa:  brfalse.s  IL_0102

          IL_00fc:  ldloc.2
          IL_00fd:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
          IL_0102:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_0103:  ldloc.1
        IL_0104:  brfalse.s  IL_010c

        IL_0106:  ldloc.1
        IL_0107:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_010c:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_010d:  ldloc.0
      IL_010e:  brfalse.s  IL_0116

      IL_0110:  ldloc.0
      IL_0111:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0116:  endfinally
    }  // end handler
    IL_0117:  ldloc.s    V_10
    IL_0119:  ret
  } // end of method ConcatKDF::DeriveKey

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ConcatKDF::.ctor

} // end of class Jose.ConcatKDF

.class public abstract auto ansi sealed beforefieldinit Jose.PBKDF2
       extends [mscorlib]System.Object
{
  .method public hidebysig static uint8[] 
          DeriveKey(uint8[] password,
                    uint8[] salt,
                    int32 iterationCount,
                    int32 keyBitLength,
                    class [mscorlib]System.Security.Cryptography.HMAC prf) cil managed
  {
    // Code size       133 (0x85)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             uint8[][] V_3,
             int32 V_4)
    IL_0000:  ldarg.s    prf
    IL_0002:  ldarg.0
    IL_0003:  callvirt   instance void [mscorlib]System.Security.Cryptography.KeyedHashAlgorithm::set_Key(uint8[])
    IL_0008:  ldarg.3
    IL_0009:  ldc.i4.m1
    IL_000a:  conv.u8
    IL_000b:  ldstr      "PBKDF2 expect derived key size to be not more that"
    + " (2^32-1) bits, but was requested {0} bits."
    IL_0010:  ldc.i4.1
    IL_0011:  newarr     [mscorlib]System.Object
    IL_0016:  dup
    IL_0017:  ldc.i4.0
    IL_0018:  ldarg.3
    IL_0019:  box        [mscorlib]System.Int32
    IL_001e:  stelem.ref
    IL_001f:  call       void Jose.Ensure::MaxValue(int32,
                                                    int64,
                                                    string,
                                                    object[])
    IL_0024:  ldarg.s    prf
    IL_0026:  callvirt   instance int32 [mscorlib]System.Security.Cryptography.HashAlgorithm::get_HashSize()
    IL_002b:  ldc.i4.8
    IL_002c:  div
    IL_002d:  stloc.0
    IL_002e:  ldarg.3
    IL_002f:  ldc.i4.8
    IL_0030:  div
    IL_0031:  dup
    IL_0032:  conv.r8
    IL_0033:  ldloc.0
    IL_0034:  conv.r8
    IL_0035:  div
    IL_0036:  call       float64 [mscorlib]System.Math::Ceiling(float64)
    IL_003b:  conv.i4
    IL_003c:  stloc.1
    IL_003d:  ldloc.1
    IL_003e:  ldc.i4.1
    IL_003f:  sub
    IL_0040:  ldloc.0
    IL_0041:  mul
    IL_0042:  sub
    IL_0043:  stloc.2
    IL_0044:  ldloc.1
    IL_0045:  newarr     uint8[]
    IL_004a:  stloc.3
    IL_004b:  ldc.i4.0
    IL_004c:  stloc.s    V_4
    IL_004e:  br.s       IL_0067

    IL_0050:  ldloc.3
    IL_0051:  ldloc.s    V_4
    IL_0053:  ldarg.1
    IL_0054:  ldarg.2
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldc.i4.1
    IL_0058:  add
    IL_0059:  ldarg.s    prf
    IL_005b:  call       uint8[] Jose.PBKDF2::F(uint8[],
                                                int32,
                                                int32,
                                                class [mscorlib]System.Security.Cryptography.HMAC)
    IL_0060:  stelem.ref
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloc.s    V_4
    IL_0069:  ldloc.1
    IL_006a:  blt.s      IL_0050

    IL_006c:  ldloc.3
    IL_006d:  ldloc.1
    IL_006e:  ldc.i4.1
    IL_006f:  sub
    IL_0070:  ldloc.3
    IL_0071:  ldloc.1
    IL_0072:  ldc.i4.1
    IL_0073:  sub
    IL_0074:  ldelem.ref
    IL_0075:  ldloc.2
    IL_0076:  ldc.i4.8
    IL_0077:  mul
    IL_0078:  call       uint8[] Jose.Arrays::LeftmostBits(uint8[],
                                                           int32)
    IL_007d:  stelem.ref
    IL_007e:  ldloc.3
    IL_007f:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_0084:  ret
  } // end of method PBKDF2::DeriveKey

  .method private hidebysig static uint8[] 
          F(uint8[] salt,
            int32 iterationCount,
            int32 blockIndex,
            class [mscorlib]System.Security.Cryptography.HMAC prf) cil managed
  {
    // Code size       63 (0x3f)
    .maxstack  5
    .locals init (uint8[] V_0,
             uint8[] V_1,
             int32 V_2)
    IL_0000:  ldarg.3
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     uint8[]
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldarg.0
    IL_000a:  stelem.ref
    IL_000b:  dup
    IL_000c:  ldc.i4.1
    IL_000d:  ldarg.2
    IL_000e:  call       uint8[] Jose.Arrays::IntToBytes(int32)
    IL_0013:  stelem.ref
    IL_0014:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_0019:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  stloc.1
    IL_0021:  ldc.i4.2
    IL_0022:  stloc.2
    IL_0023:  br.s       IL_0039

    IL_0025:  ldarg.3
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
    IL_002c:  stloc.0
    IL_002d:  ldloc.1
    IL_002e:  ldloc.0
    IL_002f:  call       uint8[] Jose.Arrays::Xor(uint8[],
                                                  uint8[])
    IL_0034:  stloc.1
    IL_0035:  ldloc.2
    IL_0036:  ldc.i4.1
    IL_0037:  add
    IL_0038:  stloc.2
    IL_0039:  ldloc.2
    IL_003a:  ldarg.1
    IL_003b:  ble.s      IL_0025

    IL_003d:  ldloc.1
    IL_003e:  ret
  } // end of method PBKDF2::F

} // end of class Jose.PBKDF2

.class public abstract auto ansi sealed beforefieldinit Jose.RsaOaep
       extends [mscorlib]System.Object
{
  .method public hidebysig static uint8[] 
          Decrypt(uint8[] cipherText,
                  class [System.Core]System.Security.Cryptography.CngKey key,
                  class [System.Core]System.Security.Cryptography.CngAlgorithm hash) cil managed
  {
    // Code size       118 (0x76)
    .maxstack  8
    .locals init (valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO V_0,
             uint32 V_1,
             uint32 V_2,
             uint8[] V_3)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance string [System.Core]System.Security.Cryptography.CngAlgorithm::get_Algorithm()
    IL_0008:  call       instance void Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO::.ctor(string)
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  ldloca.s   V_0
    IL_0019:  ldnull
    IL_001a:  ldc.i4.0
    IL_001b:  ldloca.s   V_1
    IL_001d:  ldc.i4.4
    IL_001e:  call       uint32 Jose.native.NCrypt::NCryptDecrypt(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                  uint8[],
                                                                  int32,
                                                                  valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO&,
                                                                  uint8[],
                                                                  uint32,
                                                                  uint32&,
                                                                  uint32)
    IL_0023:  stloc.2
    IL_0024:  ldloc.2
    IL_0025:  brfalse.s  IL_003d

    IL_0027:  ldstr      "NCrypt.Decrypt() (plaintext buffer size) failed wi"
    + "th status code:{0}"
    IL_002c:  ldloc.2
    IL_002d:  box        [mscorlib]System.UInt32
    IL_0032:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0037:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_003c:  throw

    IL_003d:  ldloc.1
    IL_003e:  newarr     [mscorlib]System.Byte
    IL_0043:  stloc.3
    IL_0044:  ldarg.1
    IL_0045:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_004a:  ldarg.0
    IL_004b:  ldarg.0
    IL_004c:  ldlen
    IL_004d:  conv.i4
    IL_004e:  ldloca.s   V_0
    IL_0050:  ldloc.3
    IL_0051:  ldloc.1
    IL_0052:  ldloca.s   V_1
    IL_0054:  ldc.i4.4
    IL_0055:  call       uint32 Jose.native.NCrypt::NCryptDecrypt(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                  uint8[],
                                                                  int32,
                                                                  valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO&,
                                                                  uint8[],
                                                                  uint32,
                                                                  uint32&,
                                                                  uint32)
    IL_005a:  stloc.2
    IL_005b:  ldloc.2
    IL_005c:  brfalse.s  IL_0074

    IL_005e:  ldstr      "NCrypt.Decrypt() failed with status code:{0}"
    IL_0063:  ldloc.2
    IL_0064:  box        [mscorlib]System.UInt32
    IL_0069:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_006e:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0073:  throw

    IL_0074:  ldloc.3
    IL_0075:  ret
  } // end of method RsaOaep::Decrypt

  .method public hidebysig static uint8[] 
          Encrypt(uint8[] plainText,
                  class [System.Core]System.Security.Cryptography.CngKey key,
                  class [System.Core]System.Security.Cryptography.CngAlgorithm hash) cil managed
  {
    // Code size       118 (0x76)
    .maxstack  8
    .locals init (valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO V_0,
             uint32 V_1,
             uint32 V_2,
             uint8[] V_3)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance string [System.Core]System.Security.Cryptography.CngAlgorithm::get_Algorithm()
    IL_0008:  call       instance void Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO::.ctor(string)
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  ldloca.s   V_0
    IL_0019:  ldnull
    IL_001a:  ldc.i4.0
    IL_001b:  ldloca.s   V_1
    IL_001d:  ldc.i4.4
    IL_001e:  call       uint32 Jose.native.NCrypt::NCryptEncrypt(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                  uint8[],
                                                                  int32,
                                                                  valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO&,
                                                                  uint8[],
                                                                  uint32,
                                                                  uint32&,
                                                                  uint32)
    IL_0023:  stloc.2
    IL_0024:  ldloc.2
    IL_0025:  brfalse.s  IL_003d

    IL_0027:  ldstr      "NCrypt.Encrypt() (ciphertext buffer size) failed w"
    + "ith status code:{0}"
    IL_002c:  ldloc.2
    IL_002d:  box        [mscorlib]System.UInt32
    IL_0032:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0037:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_003c:  throw

    IL_003d:  ldloc.1
    IL_003e:  newarr     [mscorlib]System.Byte
    IL_0043:  stloc.3
    IL_0044:  ldarg.1
    IL_0045:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_004a:  ldarg.0
    IL_004b:  ldarg.0
    IL_004c:  ldlen
    IL_004d:  conv.i4
    IL_004e:  ldloca.s   V_0
    IL_0050:  ldloc.3
    IL_0051:  ldloc.1
    IL_0052:  ldloca.s   V_1
    IL_0054:  ldc.i4.4
    IL_0055:  call       uint32 Jose.native.NCrypt::NCryptEncrypt(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                  uint8[],
                                                                  int32,
                                                                  valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO&,
                                                                  uint8[],
                                                                  uint32,
                                                                  uint32&,
                                                                  uint32)
    IL_005a:  stloc.2
    IL_005b:  ldloc.2
    IL_005c:  brfalse.s  IL_0074

    IL_005e:  ldstr      "NCrypt.Encrypt() failed with status code:{0}"
    IL_0063:  ldloc.2
    IL_0064:  box        [mscorlib]System.UInt32
    IL_0069:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_006e:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0073:  throw

    IL_0074:  ldloc.3
    IL_0075:  ret
  } // end of method RsaOaep::Encrypt

} // end of class Jose.RsaOaep

.class public abstract auto ansi sealed beforefieldinit Jose.RsaPss
       extends [mscorlib]System.Object
{
  .method public hidebysig static uint8[] 
          Sign(uint8[] input,
               class [System.Core]System.Security.Cryptography.CngKey key,
               class [System.Core]System.Security.Cryptography.CngAlgorithm hash,
               int32 saltSize) cil managed
  {
    // Code size       42 (0x2a)
    .maxstack  4
    .locals init (class [mscorlib]System.Security.Cryptography.HashAlgorithm V_0,
             uint8[] V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       class [mscorlib]System.Security.Cryptography.HashAlgorithm Jose.RsaPss::HashAlgorithm(class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  ldloc.0
      IL_0008:  ldarg.0
      IL_0009:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_000e:  ldarg.1
      IL_000f:  ldarg.2
      IL_0010:  callvirt   instance string [System.Core]System.Security.Cryptography.CngAlgorithm::get_Algorithm()
      IL_0015:  ldarg.3
      IL_0016:  call       uint8[] Jose.RsaPss::SignHash(uint8[],
                                                         class [System.Core]System.Security.Cryptography.CngKey,
                                                         string,
                                                         int32)
      IL_001b:  stloc.1
      IL_001c:  leave.s    IL_0028

    }  // end .try
    finally
    {
      IL_001e:  ldloc.0
      IL_001f:  brfalse.s  IL_0027

      IL_0021:  ldloc.0
      IL_0022:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0027:  endfinally
    }  // end handler
    IL_0028:  ldloc.1
    IL_0029:  ret
  } // end of method RsaPss::Sign

  .method public hidebysig static bool  Verify(uint8[] securedInput,
                                               uint8[] signature,
                                               class [System.Core]System.Security.Cryptography.CngKey key,
                                               class [System.Core]System.Security.Cryptography.CngAlgorithm hash,
                                               int32 saltSize) cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  5
    .locals init (class [mscorlib]System.Security.Cryptography.HashAlgorithm V_0,
             bool V_1)
    IL_0000:  ldarg.3
    IL_0001:  call       class [mscorlib]System.Security.Cryptography.HashAlgorithm Jose.RsaPss::HashAlgorithm(class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  ldloc.0
      IL_0008:  ldarg.0
      IL_0009:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_000e:  ldarg.1
      IL_000f:  ldarg.2
      IL_0010:  ldarg.3
      IL_0011:  callvirt   instance string [System.Core]System.Security.Cryptography.CngAlgorithm::get_Algorithm()
      IL_0016:  ldarg.s    saltSize
      IL_0018:  call       bool Jose.RsaPss::VerifyHash(uint8[],
                                                        uint8[],
                                                        class [System.Core]System.Security.Cryptography.CngKey,
                                                        string,
                                                        int32)
      IL_001d:  stloc.1
      IL_001e:  leave.s    IL_002a

    }  // end .try
    finally
    {
      IL_0020:  ldloc.0
      IL_0021:  brfalse.s  IL_0029

      IL_0023:  ldloc.0
      IL_0024:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0029:  endfinally
    }  // end handler
    IL_002a:  ldloc.1
    IL_002b:  ret
  } // end of method RsaPss::Verify

  .method private hidebysig static bool  VerifyHash(uint8[] hash,
                                                    uint8[] signature,
                                                    class [System.Core]System.Security.Cryptography.CngKey key,
                                                    string 'algorithm',
                                                    int32 saltSize) cil managed
  {
    // Code size       70 (0x46)
    .maxstack  7
    .locals init (valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO V_0,
             uint32 V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    saltSize
    IL_0005:  call       instance void Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO::.ctor(string,
                                                                                         int32)
    IL_000a:  ldarg.2
    IL_000b:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldlen
    IL_0015:  conv.i4
    IL_0016:  ldarg.1
    IL_0017:  ldarg.1
    IL_0018:  ldlen
    IL_0019:  conv.i4
    IL_001a:  ldc.i4.8
    IL_001b:  call       uint32 Jose.native.NCrypt::NCryptVerifySignature(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                          valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO&,
                                                                          uint8[],
                                                                          int32,
                                                                          uint8[],
                                                                          int32,
                                                                          uint32)
    IL_0020:  stloc.1
    IL_0021:  ldloc.1
    IL_0022:  ldc.i4     0x80090006
    IL_0027:  bne.un.s   IL_002b

    IL_0029:  ldc.i4.0
    IL_002a:  ret

    IL_002b:  ldloc.1
    IL_002c:  brfalse.s  IL_0044

    IL_002e:  ldstr      "NCrypt.NCryptSignHash() (signature size) failed wi"
    + "th status code:{0}"
    IL_0033:  ldloc.1
    IL_0034:  box        [mscorlib]System.UInt32
    IL_0039:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_003e:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0043:  throw

    IL_0044:  ldc.i4.1
    IL_0045:  ret
  } // end of method RsaPss::VerifyHash

  .method private hidebysig static uint8[] 
          SignHash(uint8[] hash,
                   class [System.Core]System.Security.Cryptography.CngKey key,
                   string 'algorithm',
                   int32 saltSize) cil managed
  {
    // Code size       116 (0x74)
    .maxstack  8
    .locals init (valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO V_0,
             uint32 V_1,
             uint32 V_2,
             uint8[] V_3)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance void Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO::.ctor(string,
                                                                                         int32)
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_000f:  ldloca.s   V_0
    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  ldnull
    IL_0016:  ldc.i4.0
    IL_0017:  ldloca.s   V_1
    IL_0019:  ldc.i4.8
    IL_001a:  call       uint32 Jose.native.NCrypt::NCryptSignHash(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                   valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO&,
                                                                   uint8[],
                                                                   int32,
                                                                   uint8[],
                                                                   int32,
                                                                   uint32&,
                                                                   uint32)
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  brfalse.s  IL_0039

    IL_0023:  ldstr      "NCrypt.NCryptSignHash() (signature size) failed wi"
    + "th status code:{0}"
    IL_0028:  ldloc.2
    IL_0029:  box        [mscorlib]System.UInt32
    IL_002e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0033:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0038:  throw

    IL_0039:  ldloc.1
    IL_003a:  newarr     [mscorlib]System.Byte
    IL_003f:  stloc.3
    IL_0040:  ldarg.1
    IL_0041:  callvirt   instance class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle [System.Core]System.Security.Cryptography.CngKey::get_Handle()
    IL_0046:  ldloca.s   V_0
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  ldlen
    IL_004b:  conv.i4
    IL_004c:  ldloc.3
    IL_004d:  ldloc.3
    IL_004e:  ldlen
    IL_004f:  conv.i4
    IL_0050:  ldloca.s   V_1
    IL_0052:  ldc.i4.8
    IL_0053:  call       uint32 Jose.native.NCrypt::NCryptSignHash(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle,
                                                                   valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO&,
                                                                   uint8[],
                                                                   int32,
                                                                   uint8[],
                                                                   int32,
                                                                   uint32&,
                                                                   uint32)
    IL_0058:  stloc.2
    IL_0059:  ldloc.2
    IL_005a:  brfalse.s  IL_0072

    IL_005c:  ldstr      "NCrypt.NCryptSignHash() failed with status code:{0}"
    IL_0061:  ldloc.2
    IL_0062:  box        [mscorlib]System.UInt32
    IL_0067:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_006c:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptographicException::.ctor(string)
    IL_0071:  throw

    IL_0072:  ldloc.3
    IL_0073:  ret
  } // end of method RsaPss::SignHash

  .method private hidebysig static class [mscorlib]System.Security.Cryptography.HashAlgorithm 
          HashAlgorithm(class [System.Core]System.Security.Cryptography.CngAlgorithm hash) cil managed
  {
    // Code size       74 (0x4a)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_0006:  call       bool [System.Core]System.Security.Cryptography.CngAlgorithm::op_Equality(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                  class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_000b:  brfalse.s  IL_0013

    IL_000d:  newobj     instance void [System.Core]System.Security.Cryptography.SHA256Cng::.ctor()
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha384()
    IL_0019:  call       bool [System.Core]System.Security.Cryptography.CngAlgorithm::op_Equality(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                  class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_001e:  brfalse.s  IL_0026

    IL_0020:  newobj     instance void [System.Core]System.Security.Cryptography.SHA384Cng::.ctor()
    IL_0025:  ret

    IL_0026:  ldarg.0
    IL_0027:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha512()
    IL_002c:  call       bool [System.Core]System.Security.Cryptography.CngAlgorithm::op_Equality(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                  class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0031:  brfalse.s  IL_0039

    IL_0033:  newobj     instance void [System.Core]System.Security.Cryptography.SHA512Cng::.ctor()
    IL_0038:  ret

    IL_0039:  ldstr      "RsaPss expects hash function to be SHA256, SHA384 "
    + "or SHA512, but was given:{0}"
    IL_003e:  ldarg.0
    IL_003f:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0044:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0049:  throw
  } // end of method RsaPss::HashAlgorithm

} // end of class Jose.RsaPss

.class interface public abstract auto ansi Jose.IJsonMapper
{
  .method public hidebysig newslot abstract virtual 
          instance string  Serialize(object obj) cil managed
  {
  } // end of method IJsonMapper::Serialize

  .method public hidebysig newslot abstract virtual 
          instance !!T  Parse<T>(string json) cil managed
  {
  } // end of method IJsonMapper::Parse

} // end of class Jose.IJsonMapper

.class public auto ansi beforefieldinit Jose.JSSerializerMapper
       extends [mscorlib]System.Object
       implements Jose.IJsonMapper
{
  .field private static class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer js
  .method private hidebysig specialname instance class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer 
          get_JS() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer Jose.JSSerializerMapper::js
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_0014

    IL_0008:  pop
    IL_0009:  newobj     instance void [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer::.ctor()
    IL_000e:  dup
    IL_000f:  stsfld     class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer Jose.JSSerializerMapper::js
    IL_0014:  ret
  } // end of method JSSerializerMapper::get_JS

  .method public hidebysig newslot virtual final 
          instance string  Serialize(object obj) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer Jose.JSSerializerMapper::get_JS()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance string [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer::Serialize(object)
    IL_000c:  ret
  } // end of method JSSerializerMapper::Serialize

  .method public hidebysig newslot virtual final 
          instance !!T  Parse<T>(string json) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer Jose.JSSerializerMapper::get_JS()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !!0 [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer::Deserialize<!!0>(string)
    IL_000c:  ret
  } // end of method JSSerializerMapper::Parse

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method JSSerializerMapper::.ctor

  .property instance class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer
          JS()
  {
    .get instance class [System.Web.Extensions]System.Web.Script.Serialization.JavaScriptSerializer Jose.JSSerializerMapper::get_JS()
  } // end of property JSSerializerMapper::JS
} // end of class Jose.JSSerializerMapper

.class public auto ansi beforefieldinit Jose.AesGcmKeyWrapManagement
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .field private int32 keyLengthBits
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 keyLengthBits) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Jose.AesGcmKeyWrapManagement::keyLengthBits
    IL_000d:  ret
  } // end of method AesGcmKeyWrapManagement::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       148 (0x94)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[] V_1,
             uint8[] V_2,
             uint8[][] V_3)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "AesGcmKeyWrapManagement alg expectes key to be byt"
    + "e[] array."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Jose.AesGcmKeyWrapManagement::keyLengthBits
    IL_0019:  conv.i8
    IL_001a:  ldstr      "AesGcmKeyWrapManagement management algorithm expec"
    + "ted key of size {0} bits, but was given {1} bits"
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 Jose.AesGcmKeyWrapManagement::keyLengthBits
    IL_0025:  box        [mscorlib]System.Int32
    IL_002a:  ldloc.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  conv.i8
    IL_002e:  ldc.i4.8
    IL_002f:  conv.i8
    IL_0030:  mul
    IL_0031:  box        [mscorlib]System.Int64
    IL_0036:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003b:  ldc.i4.0
    IL_003c:  newarr     [mscorlib]System.Object
    IL_0041:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0046:  ldc.i4.s   96
    IL_0048:  call       uint8[] Jose.Arrays::Random(int32)
    IL_004d:  stloc.1
    IL_004e:  ldarg.1
    IL_004f:  call       uint8[] Jose.Arrays::Random(int32)
    IL_0054:  stloc.2
    IL_0055:  ldloc.0
    IL_0056:  ldloc.1
    IL_0057:  ldnull
    IL_0058:  ldloc.2
    IL_0059:  call       uint8[][] Jose.AesGcm::Encrypt(uint8[],
                                                        uint8[],
                                                        uint8[],
                                                        uint8[])
    IL_005e:  stloc.3
    IL_005f:  ldarg.3
    IL_0060:  ldstr      "iv"
    IL_0065:  ldloc.1
    IL_0066:  call       string Jose.Base64Url::Encode(uint8[])
    IL_006b:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_0070:  ldarg.3
    IL_0071:  ldstr      "tag"
    IL_0076:  ldloc.3
    IL_0077:  ldc.i4.1
    IL_0078:  ldelem.ref
    IL_0079:  call       string Jose.Base64Url::Encode(uint8[])
    IL_007e:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_0083:  ldc.i4.2
    IL_0084:  newarr     uint8[]
    IL_0089:  dup
    IL_008a:  ldc.i4.0
    IL_008b:  ldloc.2
    IL_008c:  stelem.ref
    IL_008d:  dup
    IL_008e:  ldc.i4.1
    IL_008f:  ldloc.3
    IL_0090:  ldc.i4.0
    IL_0091:  ldelem.ref
    IL_0092:  stelem.ref
    IL_0093:  ret
  } // end of method AesGcmKeyWrapManagement::WrapNewKey

  .method public hidebysig newslot virtual final 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       191 (0xbf)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[] V_1,
             uint8[] V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "AesGcmKeyWrapManagement alg expectes key to be byt"
    + "e[] array."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Jose.AesGcmKeyWrapManagement::keyLengthBits
    IL_0019:  conv.i8
    IL_001a:  ldstr      "AesGcmKeyWrapManagement management algorithm expec"
    + "ted key of size {0} bits, but was given {1} bits"
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 Jose.AesGcmKeyWrapManagement::keyLengthBits
    IL_0025:  box        [mscorlib]System.Int32
    IL_002a:  ldloc.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  conv.i8
    IL_002e:  ldc.i4.8
    IL_002f:  conv.i8
    IL_0030:  mul
    IL_0031:  box        [mscorlib]System.Int64
    IL_0036:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003b:  ldc.i4.0
    IL_003c:  newarr     [mscorlib]System.Object
    IL_0041:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0046:  ldarg.s    header
    IL_0048:  ldc.i4.1
    IL_0049:  newarr     [mscorlib]System.String
    IL_004e:  dup
    IL_004f:  ldc.i4.0
    IL_0050:  ldstr      "iv"
    IL_0055:  stelem.ref
    IL_0056:  ldstr      "AesGcmKeyWrapManagement algorithm expects 'iv' par"
    + "am in JWT header, but was not found"
    IL_005b:  ldc.i4.0
    IL_005c:  newarr     [mscorlib]System.Object
    IL_0061:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_0066:  ldarg.s    header
    IL_0068:  ldc.i4.1
    IL_0069:  newarr     [mscorlib]System.String
    IL_006e:  dup
    IL_006f:  ldc.i4.0
    IL_0070:  ldstr      "tag"
    IL_0075:  stelem.ref
    IL_0076:  ldstr      "AesGcmKeyWrapManagement algorithm expects 'tag' pa"
    + "ram in JWT header, but was not found"
    IL_007b:  ldc.i4.0
    IL_007c:  newarr     [mscorlib]System.Object
    IL_0081:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_0086:  ldarg.s    header
    IL_0088:  ldstr      "iv"
    IL_008d:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0092:  castclass  [mscorlib]System.String
    IL_0097:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_009c:  stloc.1
    IL_009d:  ldarg.s    header
    IL_009f:  ldstr      "tag"
    IL_00a4:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_00a9:  castclass  [mscorlib]System.String
    IL_00ae:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_00b3:  stloc.2
    IL_00b4:  ldloc.0
    IL_00b5:  ldloc.1
    IL_00b6:  ldnull
    IL_00b7:  ldarg.1
    IL_00b8:  ldloc.2
    IL_00b9:  call       uint8[] Jose.AesGcm::Decrypt(uint8[],
                                                      uint8[],
                                                      uint8[],
                                                      uint8[],
                                                      uint8[])
    IL_00be:  ret
  } // end of method AesGcmKeyWrapManagement::Unwrap

} // end of class Jose.AesGcmKeyWrapManagement

.class public auto ansi beforefieldinit Jose.AesKeyWrapManagement
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .field private initonly int32 kekLengthBits
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 kekLengthBits) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Jose.AesKeyWrapManagement::kekLengthBits
    IL_000d:  ret
  } // end of method AesKeyWrapManagement::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       100 (0x64)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[] V_1,
             uint8[] V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "AesKeyWrap management algorithm expectes key to be"
    + " byte[] array."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Jose.AesKeyWrapManagement::kekLengthBits
    IL_0019:  conv.i8
    IL_001a:  ldstr      "AesKeyWrap management algorithm expected key of si"
    + "ze {0} bits, but was given {1} bits"
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 Jose.AesKeyWrapManagement::kekLengthBits
    IL_0025:  box        [mscorlib]System.Int32
    IL_002a:  ldloc.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  conv.i8
    IL_002e:  ldc.i4.8
    IL_002f:  conv.i8
    IL_0030:  mul
    IL_0031:  box        [mscorlib]System.Int64
    IL_0036:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003b:  ldc.i4.0
    IL_003c:  newarr     [mscorlib]System.Object
    IL_0041:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0046:  ldarg.1
    IL_0047:  call       uint8[] Jose.Arrays::Random(int32)
    IL_004c:  stloc.1
    IL_004d:  ldloc.1
    IL_004e:  ldloc.0
    IL_004f:  call       uint8[] Jose.AesKeyWrap::Wrap(uint8[],
                                                       uint8[])
    IL_0054:  stloc.2
    IL_0055:  ldc.i4.2
    IL_0056:  newarr     uint8[]
    IL_005b:  dup
    IL_005c:  ldc.i4.0
    IL_005d:  ldloc.1
    IL_005e:  stelem.ref
    IL_005f:  dup
    IL_0060:  ldc.i4.1
    IL_0061:  ldloc.2
    IL_0062:  stelem.ref
    IL_0063:  ret
  } // end of method AesKeyWrapManagement::WrapNewKey

  .method public hidebysig newslot virtual final 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  6
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "AesKeyWrap management algorithm expectes key to be"
    + " byte[] array."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Jose.AesKeyWrapManagement::kekLengthBits
    IL_0019:  conv.i8
    IL_001a:  ldstr      "AesKeyWrap management algorithm expected key of si"
    + "ze {0} bits, but was given {1} bits"
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 Jose.AesKeyWrapManagement::kekLengthBits
    IL_0025:  box        [mscorlib]System.Int32
    IL_002a:  ldloc.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  conv.i8
    IL_002e:  ldc.i4.8
    IL_002f:  conv.i8
    IL_0030:  mul
    IL_0031:  box        [mscorlib]System.Int64
    IL_0036:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003b:  ldc.i4.0
    IL_003c:  newarr     [mscorlib]System.Object
    IL_0041:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0046:  ldarg.1
    IL_0047:  ldloc.0
    IL_0048:  call       uint8[] Jose.AesKeyWrap::Unwrap(uint8[],
                                                         uint8[])
    IL_004d:  ret
  } // end of method AesKeyWrapManagement::Unwrap

} // end of class Jose.AesKeyWrapManagement

.class public auto ansi beforefieldinit Jose.DirectKeyManagement
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .method public hidebysig newslot virtual final 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     uint8[]
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarg.2
    IL_0009:  ldstr      "DirectKeyManagement alg expectes key to be byte[] "
    + "array."
    IL_000e:  ldc.i4.0
    IL_000f:  newarr     [mscorlib]System.Object
    IL_0014:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0019:  stelem.ref
    IL_001a:  dup
    IL_001b:  ldc.i4.1
    IL_001c:  ldsfld     uint8[] Jose.Arrays::Empty
    IL_0021:  stelem.ref
    IL_0022:  ret
  } // end of method DirectKeyManagement::WrapNewKey

  .method public hidebysig newslot virtual final 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "DirectKeyManagement expects empty content encrypti"
    + "on key."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       void Jose.Ensure::IsEmpty(uint8[],
                                                   string,
                                                   object[])
    IL_0011:  ldarg.2
    IL_0012:  ldstr      "DirectKeyManagement alg expectes key to be byte[] "
    + "array."
    IL_0017:  ldc.i4.0
    IL_0018:  newarr     [mscorlib]System.Object
    IL_001d:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0022:  ret
  } // end of method DirectKeyManagement::Unwrap

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method DirectKeyManagement::.ctor

} // end of class Jose.DirectKeyManagement

.class public auto ansi beforefieldinit Jose.EcdhKeyManagement
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .field private string algIdHeader
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(bool isDirectAgreement) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  brtrue.s   IL_0011

    IL_000a:  ldstr      "alg"
    IL_000f:  br.s       IL_0016

    IL_0011:  ldstr      "enc"
    IL_0016:  stfld      string Jose.EcdhKeyManagement::algIdHeader
    IL_001b:  ret
  } // end of method EcdhKeyManagement::.ctor

  .method public hidebysig newslot virtual 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint8[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance uint8[] Jose.EcdhKeyManagement::NewKey(int32,
                                                                         object,
                                                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_0009:  stloc.0
    IL_000a:  ldarg.0
    IL_000b:  ldloc.0
    IL_000c:  ldarg.2
    IL_000d:  callvirt   instance uint8[] Jose.EcdhKeyManagement::Wrap(uint8[],
                                                                       object)
    IL_0012:  stloc.1
    IL_0013:  ldc.i4.2
    IL_0014:  newarr     uint8[]
    IL_0019:  dup
    IL_001a:  ldc.i4.0
    IL_001b:  ldloc.0
    IL_001c:  stelem.ref
    IL_001d:  dup
    IL_001e:  ldc.i4.1
    IL_001f:  ldloc.1
    IL_0020:  stelem.ref
    IL_0021:  ret
  } // end of method EcdhKeyManagement::WrapNewKey

  .method private hidebysig instance uint8[] 
          NewKey(int32 keyLength,
                 object key,
                 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       137 (0x89)
    .maxstack  5
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             class Security.Cryptography.EccKey V_1,
             class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "EcdhKeyManagement alg expects key to be of CngKey "
    + "type."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<class [System.Core]System.Security.Cryptography.CngKey>(object,
                                                                                                       string,
                                                                                                       object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  call       class Security.Cryptography.EccKey Security.Cryptography.EccKey::Generate(class [System.Core]System.Security.Cryptography.CngKey)
    IL_0018:  stloc.1
    IL_0019:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<string,object>::.ctor()
    IL_001e:  stloc.2
    IL_001f:  ldloc.2
    IL_0020:  ldstr      "kty"
    IL_0025:  ldstr      "EC"
    IL_002a:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_002f:  ldloc.2
    IL_0030:  ldstr      "x"
    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance uint8[] Security.Cryptography.EccKey::get_X()
    IL_003b:  call       string Jose.Base64Url::Encode(uint8[])
    IL_0040:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_0045:  ldloc.2
    IL_0046:  ldstr      "y"
    IL_004b:  ldloc.1
    IL_004c:  callvirt   instance uint8[] Security.Cryptography.EccKey::get_Y()
    IL_0051:  call       string Jose.Base64Url::Encode(uint8[])
    IL_0056:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_005b:  ldloc.2
    IL_005c:  ldstr      "crv"
    IL_0061:  ldarg.0
    IL_0062:  ldloc.0
    IL_0063:  call       instance string Jose.EcdhKeyManagement::Curve(class [System.Core]System.Security.Cryptography.CngKey)
    IL_0068:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_006d:  ldarg.3
    IL_006e:  ldstr      "epk"
    IL_0073:  ldloc.2
    IL_0074:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_0079:  ldarg.0
    IL_007a:  ldarg.3
    IL_007b:  ldarg.1
    IL_007c:  ldloc.0
    IL_007d:  ldloc.1
    IL_007e:  callvirt   instance class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::get_Key()
    IL_0083:  call       instance uint8[] Jose.EcdhKeyManagement::DeriveKey(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                                            int32,
                                                                            class [System.Core]System.Security.Cryptography.CngKey,
                                                                            class [System.Core]System.Security.Cryptography.CngKey)
    IL_0088:  ret
  } // end of method EcdhKeyManagement::NewKey

  .method public hidebysig newslot virtual 
          instance uint8[]  Wrap(uint8[] cek,
                                 object key) cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     uint8[] Jose.Arrays::Empty
    IL_0005:  ret
  } // end of method EcdhKeyManagement::Wrap

  .method public hidebysig newslot virtual 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       216 (0xd8)
    .maxstack  5
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> V_1,
             uint8[] V_2,
             uint8[] V_3,
             class [System.Core]System.Security.Cryptography.CngKey V_4)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "EcdhKeyManagement alg expects key to be of CngKey "
    + "type."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<class [System.Core]System.Security.Cryptography.CngKey>(object,
                                                                                                       string,
                                                                                                       object[])
    IL_0011:  stloc.0
    IL_0012:  ldarg.s    header
    IL_0014:  ldc.i4.1
    IL_0015:  newarr     [mscorlib]System.String
    IL_001a:  dup
    IL_001b:  ldc.i4.0
    IL_001c:  ldstr      "epk"
    IL_0021:  stelem.ref
    IL_0022:  ldstr      "EcdhKeyManagement algorithm expects 'epk' key para"
    + "m in JWT header, but was not found"
    IL_0027:  ldc.i4.0
    IL_0028:  newarr     [mscorlib]System.Object
    IL_002d:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_0032:  ldarg.s    header
    IL_0034:  ldc.i4.1
    IL_0035:  newarr     [mscorlib]System.String
    IL_003a:  dup
    IL_003b:  ldc.i4.0
    IL_003c:  ldarg.0
    IL_003d:  ldfld      string Jose.EcdhKeyManagement::algIdHeader
    IL_0042:  stelem.ref
    IL_0043:  ldstr      "EcdhKeyManagement algorithm expects 'enc' header t"
    + "o be present in JWT header, but was not found"
    IL_0048:  ldc.i4.0
    IL_0049:  newarr     [mscorlib]System.Object
    IL_004e:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_0053:  ldarg.s    header
    IL_0055:  ldstr      "epk"
    IL_005a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_005f:  castclass  class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>
    IL_0064:  stloc.1
    IL_0065:  ldloc.1
    IL_0066:  ldc.i4.3
    IL_0067:  newarr     [mscorlib]System.String
    IL_006c:  dup
    IL_006d:  ldc.i4.0
    IL_006e:  ldstr      "x"
    IL_0073:  stelem.ref
    IL_0074:  dup
    IL_0075:  ldc.i4.1
    IL_0076:  ldstr      "y"
    IL_007b:  stelem.ref
    IL_007c:  dup
    IL_007d:  ldc.i4.2
    IL_007e:  ldstr      "crv"
    IL_0083:  stelem.ref
    IL_0084:  ldstr      "EcdhKeyManagement algorithm expects 'epk' key to c"
    + "ontain 'x','y' and 'crv' fields."
    IL_0089:  ldc.i4.0
    IL_008a:  newarr     [mscorlib]System.Object
    IL_008f:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_0094:  ldloc.1
    IL_0095:  ldstr      "x"
    IL_009a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_009f:  castclass  [mscorlib]System.String
    IL_00a4:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_00a9:  stloc.2
    IL_00aa:  ldloc.1
    IL_00ab:  ldstr      "y"
    IL_00b0:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_00b5:  castclass  [mscorlib]System.String
    IL_00ba:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_00bf:  stloc.3
    IL_00c0:  ldloc.2
    IL_00c1:  ldloc.3
    IL_00c2:  ldnull
    IL_00c3:  ldc.i4.4
    IL_00c4:  call       class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.EccKey::New(uint8[],
                                                                                                                  uint8[],
                                                                                                                  uint8[],
                                                                                                                  valuetype [System.Core]System.Security.Cryptography.CngKeyUsages)
    IL_00c9:  stloc.s    V_4
    IL_00cb:  ldarg.0
    IL_00cc:  ldarg.s    header
    IL_00ce:  ldarg.3
    IL_00cf:  ldloc.s    V_4
    IL_00d1:  ldloc.0
    IL_00d2:  call       instance uint8[] Jose.EcdhKeyManagement::DeriveKey(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                                            int32,
                                                                            class [System.Core]System.Security.Cryptography.CngKey,
                                                                            class [System.Core]System.Security.Cryptography.CngKey)
    IL_00d7:  ret
  } // end of method EcdhKeyManagement::Unwrap

  .method private hidebysig instance uint8[] 
          DeriveKey(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header,
                    int32 cekSizeBits,
                    class [System.Core]System.Security.Cryptography.CngKey externalPublicKey,
                    class [System.Core]System.Security.Cryptography.CngKey privateKey) cil managed
  {
    // Code size       220 (0xdc)
    .maxstack  7
    .locals init (uint8[] V_0,
             uint8[] V_1,
             uint8[] V_2,
             uint8[] V_3,
             uint8[] V_4,
             uint8[] V_5,
             uint8[] V_6)
    IL_0000:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0005:  ldarg.1
    IL_0006:  ldarg.0
    IL_0007:  ldfld      string Jose.EcdhKeyManagement::algIdHeader
    IL_000c:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0011:  castclass  [mscorlib]System.String
    IL_0016:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_001b:  stloc.0
    IL_001c:  ldarg.1
    IL_001d:  ldstr      "apv"
    IL_0022:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::ContainsKey(!0)
    IL_0027:  brtrue.s   IL_0030

    IL_0029:  ldsfld     uint8[] Jose.Arrays::Empty
    IL_002e:  br.s       IL_0045

    IL_0030:  ldarg.1
    IL_0031:  ldstr      "apv"
    IL_0036:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_003b:  castclass  [mscorlib]System.String
    IL_0040:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_0045:  stloc.1
    IL_0046:  ldarg.1
    IL_0047:  ldstr      "apu"
    IL_004c:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::ContainsKey(!0)
    IL_0051:  brtrue.s   IL_005a

    IL_0053:  ldsfld     uint8[] Jose.Arrays::Empty
    IL_0058:  br.s       IL_006f

    IL_005a:  ldarg.1
    IL_005b:  ldstr      "apu"
    IL_0060:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0065:  castclass  [mscorlib]System.String
    IL_006a:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_006f:  stloc.2
    IL_0070:  ldc.i4.2
    IL_0071:  newarr     uint8[]
    IL_0076:  dup
    IL_0077:  ldc.i4.0
    IL_0078:  ldloc.0
    IL_0079:  ldlen
    IL_007a:  conv.i4
    IL_007b:  call       uint8[] Jose.Arrays::IntToBytes(int32)
    IL_0080:  stelem.ref
    IL_0081:  dup
    IL_0082:  ldc.i4.1
    IL_0083:  ldloc.0
    IL_0084:  stelem.ref
    IL_0085:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_008a:  stloc.3
    IL_008b:  ldc.i4.2
    IL_008c:  newarr     uint8[]
    IL_0091:  dup
    IL_0092:  ldc.i4.0
    IL_0093:  ldloc.2
    IL_0094:  ldlen
    IL_0095:  conv.i4
    IL_0096:  call       uint8[] Jose.Arrays::IntToBytes(int32)
    IL_009b:  stelem.ref
    IL_009c:  dup
    IL_009d:  ldc.i4.1
    IL_009e:  ldloc.2
    IL_009f:  stelem.ref
    IL_00a0:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_00a5:  stloc.s    V_4
    IL_00a7:  ldc.i4.2
    IL_00a8:  newarr     uint8[]
    IL_00ad:  dup
    IL_00ae:  ldc.i4.0
    IL_00af:  ldloc.1
    IL_00b0:  ldlen
    IL_00b1:  conv.i4
    IL_00b2:  call       uint8[] Jose.Arrays::IntToBytes(int32)
    IL_00b7:  stelem.ref
    IL_00b8:  dup
    IL_00b9:  ldc.i4.1
    IL_00ba:  ldloc.1
    IL_00bb:  stelem.ref
    IL_00bc:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_00c1:  stloc.s    V_5
    IL_00c3:  ldarg.2
    IL_00c4:  call       uint8[] Jose.Arrays::IntToBytes(int32)
    IL_00c9:  stloc.s    V_6
    IL_00cb:  ldarg.3
    IL_00cc:  ldarg.s    privateKey
    IL_00ce:  ldarg.2
    IL_00cf:  ldloc.3
    IL_00d0:  ldloc.s    V_5
    IL_00d2:  ldloc.s    V_4
    IL_00d4:  ldloc.s    V_6
    IL_00d6:  call       uint8[] Jose.ConcatKDF::DeriveKey(class [System.Core]System.Security.Cryptography.CngKey,
                                                           class [System.Core]System.Security.Cryptography.CngKey,
                                                           int32,
                                                           uint8[],
                                                           uint8[],
                                                           uint8[],
                                                           uint8[])
    IL_00db:  ret
  } // end of method EcdhKeyManagement::DeriveKey

  .method private hidebysig instance string 
          Curve(class [System.Core]System.Security.Cryptography.CngKey key) cil managed
  {
    // Code size       94 (0x5e)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngKey::get_Algorithm()
    IL_0006:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_ECDiffieHellmanP256()
    IL_000b:  call       bool [System.Core]System.Security.Cryptography.CngAlgorithm::op_Equality(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                  class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  ldstr      "P-256"
    IL_0017:  ret

    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngKey::get_Algorithm()
    IL_001e:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_ECDiffieHellmanP384()
    IL_0023:  call       bool [System.Core]System.Security.Cryptography.CngAlgorithm::op_Equality(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                  class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0028:  brfalse.s  IL_0030

    IL_002a:  ldstr      "P-384"
    IL_002f:  ret

    IL_0030:  ldarg.1
    IL_0031:  callvirt   instance class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngKey::get_Algorithm()
    IL_0036:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_ECDiffieHellmanP521()
    IL_003b:  call       bool [System.Core]System.Security.Cryptography.CngAlgorithm::op_Equality(class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                                                                  class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0040:  brfalse.s  IL_0048

    IL_0042:  ldstr      "P-521"
    IL_0047:  ret

    IL_0048:  ldstr      "Unknown curve type "
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngKey::get_Algorithm()
    IL_0053:  call       string [mscorlib]System.String::Concat(object,
                                                                object)
    IL_0058:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_005d:  throw
  } // end of method EcdhKeyManagement::Curve

} // end of class Jose.EcdhKeyManagement

.class public auto ansi beforefieldinit Jose.EcdhKeyManagementWithAesKeyWrap
       extends Jose.EcdhKeyManagement
{
  .field private class Jose.AesKeyWrapManagement aesKW
  .field private int32 keyLengthBits
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 keyLengthBits,
                               class Jose.AesKeyWrapManagement aesKw) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Jose.EcdhKeyManagement::.ctor(bool)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      class Jose.AesKeyWrapManagement Jose.EcdhKeyManagementWithAesKeyWrap::aesKW
    IL_000e:  ldarg.0
    IL_000f:  ldarg.1
    IL_0010:  stfld      int32 Jose.EcdhKeyManagementWithAesKeyWrap::keyLengthBits
    IL_0015:  ret
  } // end of method EcdhKeyManagementWithAesKeyWrap::.ctor

  .method public hidebysig virtual instance uint8[][] 
          WrapNewKey(int32 cekSizeBits,
                     object key,
                     class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       32 (0x20)
    .maxstack  4
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Jose.EcdhKeyManagementWithAesKeyWrap::keyLengthBits
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  call       instance uint8[][] Jose.EcdhKeyManagement::WrapNewKey(int32,
                                                                               object,
                                                                               class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_000e:  ldc.i4.0
    IL_000f:  ldelem.ref
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Jose.AesKeyWrapManagement Jose.EcdhKeyManagementWithAesKeyWrap::aesKW
    IL_0017:  ldarg.1
    IL_0018:  ldloc.0
    IL_0019:  ldarg.3
    IL_001a:  callvirt   instance uint8[][] Jose.AesKeyWrapManagement::WrapNewKey(int32,
                                                                                  object,
                                                                                  class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_001f:  ret
  } // end of method EcdhKeyManagementWithAesKeyWrap::WrapNewKey

  .method public hidebysig virtual instance uint8[] 
          Unwrap(uint8[] encryptedCek,
                 object key,
                 int32 cekSizeBits,
                 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       38 (0x26)
    .maxstack  5
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     uint8[] Jose.Arrays::Empty
    IL_0006:  ldarg.2
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 Jose.EcdhKeyManagementWithAesKeyWrap::keyLengthBits
    IL_000d:  ldarg.s    header
    IL_000f:  call       instance uint8[] Jose.EcdhKeyManagement::Unwrap(uint8[],
                                                                         object,
                                                                         int32,
                                                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_0014:  stloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Jose.AesKeyWrapManagement Jose.EcdhKeyManagementWithAesKeyWrap::aesKW
    IL_001b:  ldarg.1
    IL_001c:  ldloc.0
    IL_001d:  ldarg.3
    IL_001e:  ldarg.s    header
    IL_0020:  callvirt   instance uint8[] Jose.AesKeyWrapManagement::Unwrap(uint8[],
                                                                            object,
                                                                            int32,
                                                                            class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_0025:  ret
  } // end of method EcdhKeyManagementWithAesKeyWrap::Unwrap

} // end of class Jose.EcdhKeyManagementWithAesKeyWrap

.class interface public abstract auto ansi Jose.IKeyManagement
{
  .method public hidebysig newslot abstract virtual 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
  } // end of method IKeyManagement::WrapNewKey

  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
  } // end of method IKeyManagement::Unwrap

} // end of class Jose.IKeyManagement

.class public auto ansi beforefieldinit Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .field private class Jose.AesKeyWrapManagement aesKW
  .field private int32 keyLengthBits
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 keyLengthBits,
                               class Jose.AesKeyWrapManagement aesKw) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.2
    IL_0008:  stfld      class Jose.AesKeyWrapManagement Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::aesKW
    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
    IL_0014:  ret
  } // end of method Pbse2HmacShaKeyManagementWithAesKeyWrap::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       194 (0xc2)
    .maxstack  5
    .locals init (string V_0,
             uint8[] V_1,
             uint8[] V_2,
             int32 V_3,
             uint8[] V_4,
             uint8[] V_5,
             uint8[] V_6,
             class [mscorlib]System.Security.Cryptography.HMAC V_7)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "Pbse2HmacShaKeyManagementWithAesKeyWrap management"
    + " algorithm expectes key to be string."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<string>(object,
                                                       string,
                                                       object[])
    IL_0011:  stloc.0
    IL_0012:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_001d:  stloc.1
    IL_001e:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0023:  ldarg.3
    IL_0024:  ldstr      "alg"
    IL_0029:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_002e:  castclass  [mscorlib]System.String
    IL_0033:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0038:  stloc.2
    IL_0039:  ldc.i4     0x2000
    IL_003e:  stloc.3
    IL_003f:  ldc.i4.s   96
    IL_0041:  call       uint8[] Jose.Arrays::Random(int32)
    IL_0046:  stloc.s    V_4
    IL_0048:  ldarg.3
    IL_0049:  ldstr      "p2c"
    IL_004e:  ldloc.3
    IL_004f:  box        [mscorlib]System.Int32
    IL_0054:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_0059:  ldarg.3
    IL_005a:  ldstr      "p2s"
    IL_005f:  ldloc.s    V_4
    IL_0061:  call       string Jose.Base64Url::Encode(uint8[])
    IL_0066:  callvirt   instance void class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::set_Item(!0,
                                                                                                                         !1)
    IL_006b:  ldc.i4.3
    IL_006c:  newarr     uint8[]
    IL_0071:  dup
    IL_0072:  ldc.i4.0
    IL_0073:  ldloc.2
    IL_0074:  stelem.ref
    IL_0075:  dup
    IL_0076:  ldc.i4.1
    IL_0077:  ldsfld     uint8[] Jose.Arrays::Zero
    IL_007c:  stelem.ref
    IL_007d:  dup
    IL_007e:  ldc.i4.2
    IL_007f:  ldloc.s    V_4
    IL_0081:  stelem.ref
    IL_0082:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_0087:  stloc.s    V_5
    IL_0089:  ldarg.0
    IL_008a:  call       instance class [mscorlib]System.Security.Cryptography.HMAC Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::get_PRF()
    IL_008f:  stloc.s    V_7
    .try
    {
      IL_0091:  ldloc.1
      IL_0092:  ldloc.s    V_5
      IL_0094:  ldloc.3
      IL_0095:  ldarg.0
      IL_0096:  ldfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
      IL_009b:  ldloc.s    V_7
      IL_009d:  call       uint8[] Jose.PBKDF2::DeriveKey(uint8[],
                                                          uint8[],
                                                          int32,
                                                          int32,
                                                          class [mscorlib]System.Security.Cryptography.HMAC)
      IL_00a2:  stloc.s    V_6
      IL_00a4:  leave.s    IL_00b2

    }  // end .try
    finally
    {
      IL_00a6:  ldloc.s    V_7
      IL_00a8:  brfalse.s  IL_00b1

      IL_00aa:  ldloc.s    V_7
      IL_00ac:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00b1:  endfinally
    }  // end handler
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Jose.AesKeyWrapManagement Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::aesKW
    IL_00b8:  ldarg.1
    IL_00b9:  ldloc.s    V_6
    IL_00bb:  ldarg.3
    IL_00bc:  callvirt   instance uint8[][] Jose.AesKeyWrapManagement::WrapNewKey(int32,
                                                                                  object,
                                                                                  class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_00c1:  ret
  } // end of method Pbse2HmacShaKeyManagementWithAesKeyWrap::WrapNewKey

  .method public hidebysig newslot virtual final 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       253 (0xfd)
    .maxstack  5
    .locals init (string V_0,
             uint8[] V_1,
             uint8[] V_2,
             int32 V_3,
             uint8[] V_4,
             uint8[] V_5,
             uint8[] V_6,
             class [mscorlib]System.Security.Cryptography.HMAC V_7)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "Pbse2HmacShaKeyManagementWithAesKeyWrap management"
    + " algorithm expectes key to be string."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<string>(object,
                                                       string,
                                                       object[])
    IL_0011:  stloc.0
    IL_0012:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_001d:  stloc.1
    IL_001e:  ldarg.s    header
    IL_0020:  ldc.i4.1
    IL_0021:  newarr     [mscorlib]System.String
    IL_0026:  dup
    IL_0027:  ldc.i4.0
    IL_0028:  ldstr      "p2c"
    IL_002d:  stelem.ref
    IL_002e:  ldstr      "Pbse2HmacShaKeyManagementWithAesKeyWrap algorithm "
    + "expects 'p2c' param in JWT header, but was not found"
    IL_0033:  ldc.i4.0
    IL_0034:  newarr     [mscorlib]System.Object
    IL_0039:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_003e:  ldarg.s    header
    IL_0040:  ldc.i4.1
    IL_0041:  newarr     [mscorlib]System.String
    IL_0046:  dup
    IL_0047:  ldc.i4.0
    IL_0048:  ldstr      "p2s"
    IL_004d:  stelem.ref
    IL_004e:  ldstr      "Pbse2HmacShaKeyManagementWithAesKeyWrap algorithm "
    + "expects 'p2s' param in JWT header, but was not found"
    IL_0053:  ldc.i4.0
    IL_0054:  newarr     [mscorlib]System.Object
    IL_0059:  call       void Jose.Ensure::Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>,
                                                    string[],
                                                    string,
                                                    object[])
    IL_005e:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0063:  ldarg.s    header
    IL_0065:  ldstr      "alg"
    IL_006a:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_006f:  castclass  [mscorlib]System.String
    IL_0074:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0079:  stloc.2
    IL_007a:  ldarg.s    header
    IL_007c:  ldstr      "p2c"
    IL_0081:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0086:  call       int32 [mscorlib]System.Convert::ToInt32(object)
    IL_008b:  stloc.3
    IL_008c:  ldarg.s    header
    IL_008e:  ldstr      "p2s"
    IL_0093:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::get_Item(!0)
    IL_0098:  castclass  [mscorlib]System.String
    IL_009d:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_00a2:  stloc.s    V_4
    IL_00a4:  ldc.i4.3
    IL_00a5:  newarr     uint8[]
    IL_00aa:  dup
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldloc.2
    IL_00ad:  stelem.ref
    IL_00ae:  dup
    IL_00af:  ldc.i4.1
    IL_00b0:  ldsfld     uint8[] Jose.Arrays::Zero
    IL_00b5:  stelem.ref
    IL_00b6:  dup
    IL_00b7:  ldc.i4.2
    IL_00b8:  ldloc.s    V_4
    IL_00ba:  stelem.ref
    IL_00bb:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_00c0:  stloc.s    V_5
    IL_00c2:  ldarg.0
    IL_00c3:  call       instance class [mscorlib]System.Security.Cryptography.HMAC Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::get_PRF()
    IL_00c8:  stloc.s    V_7
    .try
    {
      IL_00ca:  ldloc.1
      IL_00cb:  ldloc.s    V_5
      IL_00cd:  ldloc.3
      IL_00ce:  ldarg.0
      IL_00cf:  ldfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
      IL_00d4:  ldloc.s    V_7
      IL_00d6:  call       uint8[] Jose.PBKDF2::DeriveKey(uint8[],
                                                          uint8[],
                                                          int32,
                                                          int32,
                                                          class [mscorlib]System.Security.Cryptography.HMAC)
      IL_00db:  stloc.s    V_6
      IL_00dd:  leave.s    IL_00eb

    }  // end .try
    finally
    {
      IL_00df:  ldloc.s    V_7
      IL_00e1:  brfalse.s  IL_00ea

      IL_00e3:  ldloc.s    V_7
      IL_00e5:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00ea:  endfinally
    }  // end handler
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      class Jose.AesKeyWrapManagement Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::aesKW
    IL_00f1:  ldarg.1
    IL_00f2:  ldloc.s    V_6
    IL_00f4:  ldarg.3
    IL_00f5:  ldarg.s    header
    IL_00f7:  callvirt   instance uint8[] Jose.AesKeyWrapManagement::Unwrap(uint8[],
                                                                            object,
                                                                            int32,
                                                                            class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>)
    IL_00fc:  ret
  } // end of method Pbse2HmacShaKeyManagementWithAesKeyWrap::Unwrap

  .method private hidebysig specialname instance class [mscorlib]System.Security.Cryptography.HMAC 
          get_PRF() cil managed
  {
    // Code size       84 (0x54)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
    IL_0006:  ldc.i4     0x80
    IL_000b:  bne.un.s   IL_0013

    IL_000d:  newobj     instance void [mscorlib]System.Security.Cryptography.HMACSHA256::.ctor()
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
    IL_0019:  ldc.i4     0xc0
    IL_001e:  bne.un.s   IL_0026

    IL_0020:  newobj     instance void [mscorlib]System.Security.Cryptography.HMACSHA384::.ctor()
    IL_0025:  ret

    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
    IL_002c:  ldc.i4     0x100
    IL_0031:  bne.un.s   IL_0039

    IL_0033:  newobj     instance void [mscorlib]System.Security.Cryptography.HMACSHA512::.ctor()
    IL_0038:  ret

    IL_0039:  ldstr      "Unsupported key size: '{0}'"
    IL_003e:  ldarg.0
    IL_003f:  ldfld      int32 Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::keyLengthBits
    IL_0044:  box        [mscorlib]System.Int32
    IL_0049:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_004e:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0053:  throw
  } // end of method Pbse2HmacShaKeyManagementWithAesKeyWrap::get_PRF

  .property instance class [mscorlib]System.Security.Cryptography.HMAC
          PRF()
  {
    .get instance class [mscorlib]System.Security.Cryptography.HMAC Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap::get_PRF()
  } // end of property Pbse2HmacShaKeyManagementWithAesKeyWrap::PRF
} // end of class Jose.Pbse2HmacShaKeyManagementWithAesKeyWrap

.class public auto ansi beforefieldinit Jose.RsaKeyManagement
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .field private bool useRsaOaepPadding
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(bool useRsaOaepPadding) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      bool Jose.RsaKeyManagement::useRsaOaepPadding
    IL_000d:  ret
  } // end of method RsaKeyManagement::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       52 (0x34)
    .maxstack  6
    .locals init (uint8[] V_0,
             class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       uint8[] Jose.Arrays::Random(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.2
    IL_0008:  ldstr      "RsaKeyManagement alg expects key to be of RSACrypt"
    + "oServiceProvider type."
    IL_000d:  ldc.i4.0
    IL_000e:  newarr     [mscorlib]System.Object
    IL_0013:  call       !!0 Jose.Ensure::Type<class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider>(object,
                                                                                                                      string,
                                                                                                                      object[])
    IL_0018:  stloc.1
    IL_0019:  ldc.i4.2
    IL_001a:  newarr     uint8[]
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldloc.0
    IL_0022:  stelem.ref
    IL_0023:  dup
    IL_0024:  ldc.i4.1
    IL_0025:  ldloc.1
    IL_0026:  ldloc.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      bool Jose.RsaKeyManagement::useRsaOaepPadding
    IL_002d:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::Encrypt(uint8[],
                                                                                                                   bool)
    IL_0032:  stelem.ref
    IL_0033:  ret
  } // end of method RsaKeyManagement::WrapNewKey

  .method public hidebysig newslot virtual final 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "RsaKeyManagement alg expects key to be of RSACrypt"
    + "oServiceProvider type."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<class [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider>(object,
                                                                                                                      string,
                                                                                                                      object[])
    IL_0011:  ldarg.1
    IL_0012:  ldarg.0
    IL_0013:  ldfld      bool Jose.RsaKeyManagement::useRsaOaepPadding
    IL_0018:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider::Decrypt(uint8[],
                                                                                                                   bool)
    IL_001d:  ret
  } // end of method RsaKeyManagement::Unwrap

} // end of class Jose.RsaKeyManagement

.class public auto ansi beforefieldinit Jose.RsaOaep256KeyManagement
       extends [mscorlib]System.Object
       implements Jose.IKeyManagement
{
  .method public hidebysig newslot virtual final 
          instance uint8[][]  WrapNewKey(int32 cekSizeBits,
                                         object key,
                                         class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       122 (0x7a)
    .maxstack  6
    .locals init (uint8[] V_0,
             class [System.Core]System.Security.Cryptography.CngKey V_1,
             class [System.Core]System.Security.Cryptography.CngKey V_2)
    IL_0000:  ldarg.1
    IL_0001:  call       uint8[] Jose.Arrays::Random(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.2
    IL_0008:  isinst     [System.Core]System.Security.Cryptography.CngKey
    IL_000d:  brfalse.s  IL_003b

    IL_000f:  ldarg.2
    IL_0010:  ldstr      "RsaOaep256KeyManagement alg expects key to be of C"
    + "ngKey type."
    IL_0015:  ldc.i4.0
    IL_0016:  newarr     [mscorlib]System.Object
    IL_001b:  call       !!0 Jose.Ensure::Type<class [System.Core]System.Security.Cryptography.CngKey>(object,
                                                                                                       string,
                                                                                                       object[])
    IL_0020:  stloc.1
    IL_0021:  ldc.i4.2
    IL_0022:  newarr     uint8[]
    IL_0027:  dup
    IL_0028:  ldc.i4.0
    IL_0029:  ldloc.0
    IL_002a:  stelem.ref
    IL_002b:  dup
    IL_002c:  ldc.i4.1
    IL_002d:  ldloc.0
    IL_002e:  ldloc.1
    IL_002f:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_0034:  call       uint8[] Jose.RsaOaep::Encrypt(uint8[],
                                                       class [System.Core]System.Security.Cryptography.CngKey,
                                                       class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0039:  stelem.ref
    IL_003a:  ret

    IL_003b:  ldarg.2
    IL_003c:  isinst     [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0041:  brfalse.s  IL_006f

    IL_0043:  ldarg.2
    IL_0044:  castclass  [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0049:  ldc.i4.0
    IL_004a:  callvirt   instance valuetype [mscorlib]System.Security.Cryptography.RSAParameters [mscorlib]System.Security.Cryptography.RSA::ExportParameters(bool)
    IL_004f:  call       class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.RsaKey::New(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_0054:  stloc.2
    IL_0055:  ldc.i4.2
    IL_0056:  newarr     uint8[]
    IL_005b:  dup
    IL_005c:  ldc.i4.0
    IL_005d:  ldloc.0
    IL_005e:  stelem.ref
    IL_005f:  dup
    IL_0060:  ldc.i4.1
    IL_0061:  ldloc.0
    IL_0062:  ldloc.2
    IL_0063:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_0068:  call       uint8[] Jose.RsaOaep::Encrypt(uint8[],
                                                       class [System.Core]System.Security.Cryptography.CngKey,
                                                       class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_006d:  stelem.ref
    IL_006e:  ret

    IL_006f:  ldstr      "RsaKeyManagement algorithm expects key to be of Cn"
    + "gKey type."
    IL_0074:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0079:  throw
  } // end of method RsaOaep256KeyManagement::WrapNewKey

  .method public hidebysig newslot virtual final 
          instance uint8[]  Unwrap(uint8[] encryptedCek,
                                   object key,
                                   int32 cekSizeBits,
                                   class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> header) cil managed
  {
    // Code size       78 (0x4e)
    .maxstack  3
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             class [System.Core]System.Security.Cryptography.CngKey V_1)
    IL_0000:  ldarg.2
    IL_0001:  isinst     [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0006:  brfalse.s  IL_0027

    IL_0008:  ldarg.2
    IL_0009:  castclass  [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance valuetype [mscorlib]System.Security.Cryptography.RSAParameters [mscorlib]System.Security.Cryptography.RSA::ExportParameters(bool)
    IL_0014:  call       class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.RsaKey::New(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_0019:  stloc.0
    IL_001a:  ldarg.1
    IL_001b:  ldloc.0
    IL_001c:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_0021:  call       uint8[] Jose.RsaOaep::Decrypt(uint8[],
                                                       class [System.Core]System.Security.Cryptography.CngKey,
                                                       class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0026:  ret

    IL_0027:  ldarg.2
    IL_0028:  isinst     [System.Core]System.Security.Cryptography.CngKey
    IL_002d:  brfalse.s  IL_0043

    IL_002f:  ldarg.2
    IL_0030:  castclass  [System.Core]System.Security.Cryptography.CngKey
    IL_0035:  stloc.1
    IL_0036:  ldarg.1
    IL_0037:  ldloc.1
    IL_0038:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_003d:  call       uint8[] Jose.RsaOaep::Decrypt(uint8[],
                                                       class [System.Core]System.Security.Cryptography.CngKey,
                                                       class [System.Core]System.Security.Cryptography.CngAlgorithm)
    IL_0042:  ret

    IL_0043:  ldstr      "RsaKeyManagement algorithm expects key to be of Cn"
    + "gKey type."
    IL_0048:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_004d:  throw
  } // end of method RsaOaep256KeyManagement::Unwrap

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method RsaOaep256KeyManagement::.ctor

} // end of class Jose.RsaOaep256KeyManagement

.class public auto ansi beforefieldinit Jose.AesCbcHmacEncryption
       extends [mscorlib]System.Object
       implements Jose.jwe.IJweAlgorithm
{
  .field private class Jose.IJwsAlgorithm hashAlgorithm
  .field private initonly int32 keyLength
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Jose.IJwsAlgorithm hashAlgorithm,
                               int32 keyLength) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Jose.IJwsAlgorithm Jose.AesCbcHmacEncryption::hashAlgorithm
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Jose.AesCbcHmacEncryption::keyLength
    IL_0014:  ret
  } // end of method AesCbcHmacEncryption::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[][]  Encrypt(uint8[] aad,
                                      uint8[] plainText,
                                      uint8[] cek) cil managed
  {
    // Code size       274 (0x112)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[] V_1,
             uint8[] V_2,
             uint8[] V_3,
             uint8[] V_4,
             class [mscorlib]System.Security.Cryptography.Aes V_5,
             class [mscorlib]System.IO.MemoryStream V_6,
             class [mscorlib]System.Security.Cryptography.ICryptoTransform V_7,
             class [mscorlib]System.Security.Cryptography.CryptoStream V_8,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_9)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Jose.AesCbcHmacEncryption::keyLength
    IL_0007:  conv.i8
    IL_0008:  ldstr      "AES-CBC with HMAC algorithm expected key of size {"
    + "0} bits, but was given {1} bits"
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Jose.AesCbcHmacEncryption::keyLength
    IL_0013:  box        [mscorlib]System.Int32
    IL_0018:  ldarg.3
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  conv.i8
    IL_001c:  ldc.i4.8
    IL_001d:  conv.i8
    IL_001e:  mul
    IL_001f:  box        [mscorlib]System.Int64
    IL_0024:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0029:  ldc.i4.0
    IL_002a:  newarr     [mscorlib]System.Object
    IL_002f:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0034:  ldarg.3
    IL_0035:  call       uint8[] Jose.Arrays::FirstHalf(uint8[])
    IL_003a:  stloc.0
    IL_003b:  ldarg.3
    IL_003c:  call       uint8[] Jose.Arrays::SecondHalf(uint8[])
    IL_0041:  stloc.1
    IL_0042:  ldc.i4     0x80
    IL_0047:  call       uint8[] Jose.Arrays::Random(int32)
    IL_004c:  stloc.2
    .try
    {
      IL_004d:  call       class [mscorlib]System.Security.Cryptography.Aes [mscorlib]System.Security.Cryptography.Aes::Create()
      IL_0052:  stloc.s    V_5
      .try
      {
        IL_0054:  ldloc.s    V_5
        IL_0056:  ldloc.1
        IL_0057:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
        IL_005c:  ldloc.s    V_5
        IL_005e:  ldloc.2
        IL_005f:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
        IL_0064:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
        IL_0069:  stloc.s    V_6
        .try
        {
          IL_006b:  ldloc.s    V_5
          IL_006d:  ldloc.s    V_5
          IL_006f:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_Key()
          IL_0074:  ldloc.s    V_5
          IL_0076:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_IV()
          IL_007b:  callvirt   instance class [mscorlib]System.Security.Cryptography.ICryptoTransform [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateEncryptor(uint8[],
                                                                                                                                                                                 uint8[])
          IL_0080:  stloc.s    V_7
          .try
          {
            IL_0082:  ldloc.s    V_6
            IL_0084:  ldloc.s    V_7
            IL_0086:  ldc.i4.1
            IL_0087:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptoStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                                          class [mscorlib]System.Security.Cryptography.ICryptoTransform,
                                                                                                          valuetype [mscorlib]System.Security.Cryptography.CryptoStreamMode)
            IL_008c:  stloc.s    V_8
            .try
            {
              IL_008e:  ldloc.s    V_8
              IL_0090:  ldarg.2
              IL_0091:  ldc.i4.0
              IL_0092:  ldarg.2
              IL_0093:  ldlen
              IL_0094:  conv.i4
              IL_0095:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                                   int32,
                                                                                   int32)
              IL_009a:  ldloc.s    V_8
              IL_009c:  callvirt   instance void [mscorlib]System.Security.Cryptography.CryptoStream::FlushFinalBlock()
              IL_00a1:  ldloc.s    V_6
              IL_00a3:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
              IL_00a8:  stloc.3
              IL_00a9:  leave.s    IL_00b7

            }  // end .try
            finally
            {
              IL_00ab:  ldloc.s    V_8
              IL_00ad:  brfalse.s  IL_00b6

              IL_00af:  ldloc.s    V_8
              IL_00b1:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
              IL_00b6:  endfinally
            }  // end handler
            IL_00b7:  leave.s    IL_00c5

          }  // end .try
          finally
          {
            IL_00b9:  ldloc.s    V_7
            IL_00bb:  brfalse.s  IL_00c4

            IL_00bd:  ldloc.s    V_7
            IL_00bf:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
            IL_00c4:  endfinally
          }  // end handler
          IL_00c5:  leave.s    IL_00d3

        }  // end .try
        finally
        {
          IL_00c7:  ldloc.s    V_6
          IL_00c9:  brfalse.s  IL_00d2

          IL_00cb:  ldloc.s    V_6
          IL_00cd:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
          IL_00d2:  endfinally
        }  // end handler
        IL_00d3:  leave.s    IL_00e1

      }  // end .try
      finally
      {
        IL_00d5:  ldloc.s    V_5
        IL_00d7:  brfalse.s  IL_00e0

        IL_00d9:  ldloc.s    V_5
        IL_00db:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_00e0:  endfinally
      }  // end handler
      IL_00e1:  leave.s    IL_00f2

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_00e3:  stloc.s    V_9
      IL_00e5:  ldstr      "Unable to encrypt content."
      IL_00ea:  ldloc.s    V_9
      IL_00ec:  newobj     instance void Jose.EncryptionException::.ctor(string,
                                                                         class [mscorlib]System.Exception)
      IL_00f1:  throw

    }  // end handler
    IL_00f2:  ldarg.0
    IL_00f3:  ldarg.1
    IL_00f4:  ldloc.2
    IL_00f5:  ldloc.3
    IL_00f6:  ldloc.0
    IL_00f7:  call       instance uint8[] Jose.AesCbcHmacEncryption::ComputeAuthTag(uint8[],
                                                                                    uint8[],
                                                                                    uint8[],
                                                                                    uint8[])
    IL_00fc:  stloc.s    V_4
    IL_00fe:  ldc.i4.3
    IL_00ff:  newarr     uint8[]
    IL_0104:  dup
    IL_0105:  ldc.i4.0
    IL_0106:  ldloc.2
    IL_0107:  stelem.ref
    IL_0108:  dup
    IL_0109:  ldc.i4.1
    IL_010a:  ldloc.3
    IL_010b:  stelem.ref
    IL_010c:  dup
    IL_010d:  ldc.i4.2
    IL_010e:  ldloc.s    V_4
    IL_0110:  stelem.ref
    IL_0111:  ret
  } // end of method AesCbcHmacEncryption::Encrypt

  .method public hidebysig newslot virtual final 
          instance uint8[]  Decrypt(uint8[] aad,
                                    uint8[] cek,
                                    uint8[] iv,
                                    uint8[] cipherText,
                                    uint8[] authTag) cil managed
  {
    // Code size       248 (0xf8)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[] V_1,
             class [mscorlib]System.Security.Cryptography.Aes V_2,
             class [mscorlib]System.IO.MemoryStream V_3,
             class [mscorlib]System.Security.Cryptography.ICryptoTransform V_4,
             class [mscorlib]System.Security.Cryptography.CryptoStream V_5,
             uint8[] V_6,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_7)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Jose.AesCbcHmacEncryption::keyLength
    IL_0007:  conv.i8
    IL_0008:  ldstr      "AES-CBC with HMAC algorithm expected key of size {"
    + "0} bits, but was given {1} bits"
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Jose.AesCbcHmacEncryption::keyLength
    IL_0013:  box        [mscorlib]System.Int32
    IL_0018:  ldarg.2
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  conv.i8
    IL_001c:  ldc.i4.8
    IL_001d:  conv.i8
    IL_001e:  mul
    IL_001f:  box        [mscorlib]System.Int64
    IL_0024:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0029:  ldc.i4.0
    IL_002a:  newarr     [mscorlib]System.Object
    IL_002f:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0034:  ldarg.2
    IL_0035:  call       uint8[] Jose.Arrays::FirstHalf(uint8[])
    IL_003a:  stloc.0
    IL_003b:  ldarg.2
    IL_003c:  call       uint8[] Jose.Arrays::SecondHalf(uint8[])
    IL_0041:  stloc.1
    IL_0042:  ldarg.0
    IL_0043:  ldarg.1
    IL_0044:  ldarg.3
    IL_0045:  ldarg.s    cipherText
    IL_0047:  ldloc.0
    IL_0048:  call       instance uint8[] Jose.AesCbcHmacEncryption::ComputeAuthTag(uint8[],
                                                                                    uint8[],
                                                                                    uint8[],
                                                                                    uint8[])
    IL_004d:  ldarg.s    authTag
    IL_004f:  call       bool Jose.Arrays::ConstantTimeEquals(uint8[],
                                                              uint8[])
    IL_0054:  brtrue.s   IL_0061

    IL_0056:  ldstr      "Authentication tag do not match."
    IL_005b:  newobj     instance void Jose.IntegrityException::.ctor(string)
    IL_0060:  throw

    IL_0061:  nop
    .try
    {
      IL_0062:  call       class [mscorlib]System.Security.Cryptography.Aes [mscorlib]System.Security.Cryptography.Aes::Create()
      IL_0067:  stloc.2
      .try
      {
        IL_0068:  ldloc.2
        IL_0069:  ldloc.1
        IL_006a:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
        IL_006f:  ldloc.2
        IL_0070:  ldarg.3
        IL_0071:  callvirt   instance void [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
        IL_0076:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
        IL_007b:  stloc.3
        .try
        {
          IL_007c:  ldloc.2
          IL_007d:  ldloc.2
          IL_007e:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_Key()
          IL_0083:  ldloc.2
          IL_0084:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::get_IV()
          IL_0089:  callvirt   instance class [mscorlib]System.Security.Cryptography.ICryptoTransform [mscorlib]System.Security.Cryptography.SymmetricAlgorithm::CreateDecryptor(uint8[],
                                                                                                                                                                                 uint8[])
          IL_008e:  stloc.s    V_4
          .try
          {
            IL_0090:  ldloc.3
            IL_0091:  ldloc.s    V_4
            IL_0093:  ldc.i4.1
            IL_0094:  newobj     instance void [mscorlib]System.Security.Cryptography.CryptoStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                                          class [mscorlib]System.Security.Cryptography.ICryptoTransform,
                                                                                                          valuetype [mscorlib]System.Security.Cryptography.CryptoStreamMode)
            IL_0099:  stloc.s    V_5
            .try
            {
              IL_009b:  ldloc.s    V_5
              IL_009d:  ldarg.s    cipherText
              IL_009f:  ldc.i4.0
              IL_00a0:  ldarg.s    cipherText
              IL_00a2:  ldlen
              IL_00a3:  conv.i4
              IL_00a4:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                                   int32,
                                                                                   int32)
              IL_00a9:  ldloc.s    V_5
              IL_00ab:  callvirt   instance void [mscorlib]System.Security.Cryptography.CryptoStream::FlushFinalBlock()
              IL_00b0:  ldloc.3
              IL_00b1:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
              IL_00b6:  stloc.s    V_6
              IL_00b8:  leave.s    IL_00f5

            }  // end .try
            finally
            {
              IL_00ba:  ldloc.s    V_5
              IL_00bc:  brfalse.s  IL_00c5

              IL_00be:  ldloc.s    V_5
              IL_00c0:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
              IL_00c5:  endfinally
            }  // end handler
          }  // end .try
          finally
          {
            IL_00c6:  ldloc.s    V_4
            IL_00c8:  brfalse.s  IL_00d1

            IL_00ca:  ldloc.s    V_4
            IL_00cc:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
            IL_00d1:  endfinally
          }  // end handler
        }  // end .try
        finally
        {
          IL_00d2:  ldloc.3
          IL_00d3:  brfalse.s  IL_00db

          IL_00d5:  ldloc.3
          IL_00d6:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
          IL_00db:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_00dc:  ldloc.2
        IL_00dd:  brfalse.s  IL_00e5

        IL_00df:  ldloc.2
        IL_00e0:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_00e5:  endfinally
      }  // end handler
    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_00e6:  stloc.s    V_7
      IL_00e8:  ldstr      "Unable to decrypt content"
      IL_00ed:  ldloc.s    V_7
      IL_00ef:  newobj     instance void Jose.EncryptionException::.ctor(string,
                                                                         class [mscorlib]System.Exception)
      IL_00f4:  throw

    }  // end handler
    IL_00f5:  ldloc.s    V_6
    IL_00f7:  ret
  } // end of method AesCbcHmacEncryption::Decrypt

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_KeySize() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Jose.AesCbcHmacEncryption::keyLength
    IL_0006:  ret
  } // end of method AesCbcHmacEncryption::get_KeySize

  .method private hidebysig instance uint8[] 
          ComputeAuthTag(uint8[] aad,
                         uint8[] iv,
                         uint8[] cipherText,
                         uint8[] hmacKey) cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint8[] V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  conv.i8
    IL_0004:  ldc.i4.8
    IL_0005:  conv.i8
    IL_0006:  mul
    IL_0007:  call       uint8[] Jose.Arrays::LongToBytes(int64)
    IL_000c:  stloc.0
    IL_000d:  ldc.i4.4
    IL_000e:  newarr     uint8[]
    IL_0013:  dup
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.1
    IL_0016:  stelem.ref
    IL_0017:  dup
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.2
    IL_001a:  stelem.ref
    IL_001b:  dup
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.3
    IL_001e:  stelem.ref
    IL_001f:  dup
    IL_0020:  ldc.i4.3
    IL_0021:  ldloc.0
    IL_0022:  stelem.ref
    IL_0023:  call       uint8[] Jose.Arrays::Concat(uint8[][])
    IL_0028:  stloc.1
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Jose.IJwsAlgorithm Jose.AesCbcHmacEncryption::hashAlgorithm
    IL_002f:  ldloc.1
    IL_0030:  ldarg.s    hmacKey
    IL_0032:  callvirt   instance uint8[] Jose.IJwsAlgorithm::Sign(uint8[],
                                                                   object)
    IL_0037:  call       uint8[] Jose.Arrays::FirstHalf(uint8[])
    IL_003c:  ret
  } // end of method AesCbcHmacEncryption::ComputeAuthTag

  .property instance int32 KeySize()
  {
    .get instance int32 Jose.AesCbcHmacEncryption::get_KeySize()
  } // end of property AesCbcHmacEncryption::KeySize
} // end of class Jose.AesCbcHmacEncryption

.class public auto ansi beforefieldinit Jose.AesGcmEncryption
       extends [mscorlib]System.Object
       implements Jose.jwe.IJweAlgorithm
{
  .field private int32 keyLength
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 keyLength) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Jose.AesGcmEncryption::keyLength
    IL_000d:  ret
  } // end of method AesGcmEncryption::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[][]  Encrypt(uint8[] aad,
                                      uint8[] plainText,
                                      uint8[] cek) cil managed
  {
    // Code size       110 (0x6e)
    .maxstack  6
    .locals init (uint8[] V_0,
             uint8[][] V_1,
             uint8[][] V_2,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_3)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Jose.AesGcmEncryption::keyLength
    IL_0007:  conv.i8
    IL_0008:  ldstr      "AES-GCM algorithm expected key of size {0} bits, b"
    + "ut was given {1} bits"
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Jose.AesGcmEncryption::keyLength
    IL_0013:  box        [mscorlib]System.Int32
    IL_0018:  ldarg.3
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  conv.i8
    IL_001c:  ldc.i4.8
    IL_001d:  conv.i8
    IL_001e:  mul
    IL_001f:  box        [mscorlib]System.Int64
    IL_0024:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0029:  ldc.i4.0
    IL_002a:  newarr     [mscorlib]System.Object
    IL_002f:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_0034:  ldc.i4.s   96
    IL_0036:  call       uint8[] Jose.Arrays::Random(int32)
    IL_003b:  stloc.0
    .try
    {
      IL_003c:  ldarg.3
      IL_003d:  ldloc.0
      IL_003e:  ldarg.1
      IL_003f:  ldarg.2
      IL_0040:  call       uint8[][] Jose.AesGcm::Encrypt(uint8[],
                                                          uint8[],
                                                          uint8[],
                                                          uint8[])
      IL_0045:  stloc.1
      IL_0046:  ldc.i4.3
      IL_0047:  newarr     uint8[]
      IL_004c:  dup
      IL_004d:  ldc.i4.0
      IL_004e:  ldloc.0
      IL_004f:  stelem.ref
      IL_0050:  dup
      IL_0051:  ldc.i4.1
      IL_0052:  ldloc.1
      IL_0053:  ldc.i4.0
      IL_0054:  ldelem.ref
      IL_0055:  stelem.ref
      IL_0056:  dup
      IL_0057:  ldc.i4.2
      IL_0058:  ldloc.1
      IL_0059:  ldc.i4.1
      IL_005a:  ldelem.ref
      IL_005b:  stelem.ref
      IL_005c:  stloc.2
      IL_005d:  leave.s    IL_006c

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_005f:  stloc.3
      IL_0060:  ldstr      "Unable to encrypt content."
      IL_0065:  ldloc.3
      IL_0066:  newobj     instance void Jose.EncryptionException::.ctor(string,
                                                                         class [mscorlib]System.Exception)
      IL_006b:  throw

    }  // end handler
    IL_006c:  ldloc.2
    IL_006d:  ret
  } // end of method AesGcmEncryption::Encrypt

  .method public hidebysig newslot virtual final 
          instance uint8[]  Decrypt(uint8[] aad,
                                    uint8[] cek,
                                    uint8[] iv,
                                    uint8[] cipherText,
                                    uint8[] authTag) cil managed
  {
    // Code size       82 (0x52)
    .maxstack  6
    .locals init (uint8[] V_0,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_1)
    IL_0000:  ldarg.2
    IL_0001:  ldarg.0
    IL_0002:  ldfld      int32 Jose.AesGcmEncryption::keyLength
    IL_0007:  conv.i8
    IL_0008:  ldstr      "AES-GCM algorithm expected key of size {0} bits, b"
    + "ut was given {1} bits"
    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Jose.AesGcmEncryption::keyLength
    IL_0013:  box        [mscorlib]System.Int32
    IL_0018:  ldarg.2
    IL_0019:  ldlen
    IL_001a:  conv.i4
    IL_001b:  conv.i8
    IL_001c:  ldc.i4.8
    IL_001d:  conv.i8
    IL_001e:  mul
    IL_001f:  box        [mscorlib]System.Int64
    IL_0024:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0029:  ldc.i4.0
    IL_002a:  newarr     [mscorlib]System.Object
    IL_002f:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    .try
    {
      IL_0034:  ldarg.2
      IL_0035:  ldarg.3
      IL_0036:  ldarg.1
      IL_0037:  ldarg.s    cipherText
      IL_0039:  ldarg.s    authTag
      IL_003b:  call       uint8[] Jose.AesGcm::Decrypt(uint8[],
                                                        uint8[],
                                                        uint8[],
                                                        uint8[],
                                                        uint8[])
      IL_0040:  stloc.0
      IL_0041:  leave.s    IL_0050

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_0043:  stloc.1
      IL_0044:  ldstr      "Unable to decrypt content or authentication tag do"
      + " not match."
      IL_0049:  ldloc.1
      IL_004a:  newobj     instance void Jose.EncryptionException::.ctor(string,
                                                                         class [mscorlib]System.Exception)
      IL_004f:  throw

    }  // end handler
    IL_0050:  ldloc.0
    IL_0051:  ret
  } // end of method AesGcmEncryption::Decrypt

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_KeySize() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Jose.AesGcmEncryption::keyLength
    IL_0006:  ret
  } // end of method AesGcmEncryption::get_KeySize

  .property instance int32 KeySize()
  {
    .get instance int32 Jose.AesGcmEncryption::get_KeySize()
  } // end of property AesGcmEncryption::KeySize
} // end of class Jose.AesGcmEncryption

.class public auto ansi beforefieldinit Jose.EcdsaUsingSha
       extends [mscorlib]System.Object
       implements Jose.IJwsAlgorithm
{
  .field private int32 keySize
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 keySize) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Jose.EcdsaUsingSha::keySize
    IL_000d:  ret
  } // end of method EcdsaUsingSha::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Sign(uint8[] securedInput,
                                 object key) cil managed
  {
    // Code size       121 (0x79)
    .maxstack  5
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             class [System.Core]System.Security.Cryptography.ECDsaCng V_1,
             uint8[] V_2,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_3)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "EcdsaUsingSha alg expects key to be of CngKey type."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<class [System.Core]System.Security.Cryptography.CngKey>(object,
                                                                                                       string,
                                                                                                       object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance int32 [System.Core]System.Security.Cryptography.CngKey::get_KeySize()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_001e:  ldstr      "ECDSA algorithm expected key of size {0} bits, but"
    + " was given {1} bits"
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_0029:  box        [mscorlib]System.Int32
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance int32 [System.Core]System.Security.Cryptography.CngKey::get_KeySize()
    IL_0034:  box        [mscorlib]System.Int32
    IL_0039:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003e:  call       void Jose.Ensure::BitSize(int32,
                                                   int32,
                                                   string)
    .try
    {
      IL_0043:  ldloc.0
      IL_0044:  newobj     instance void [System.Core]System.Security.Cryptography.ECDsaCng::.ctor(class [System.Core]System.Security.Cryptography.CngKey)
      IL_0049:  stloc.1
      .try
      {
        IL_004a:  ldloc.1
        IL_004b:  ldarg.0
        IL_004c:  call       instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.EcdsaUsingSha::get_Hash()
        IL_0051:  callvirt   instance void [System.Core]System.Security.Cryptography.ECDsaCng::set_HashAlgorithm(class [System.Core]System.Security.Cryptography.CngAlgorithm)
        IL_0056:  ldloc.1
        IL_0057:  ldarg.1
        IL_0058:  callvirt   instance uint8[] [System.Core]System.Security.Cryptography.ECDsaCng::SignData(uint8[])
        IL_005d:  stloc.2
        IL_005e:  leave.s    IL_0077

      }  // end .try
      finally
      {
        IL_0060:  ldloc.1
        IL_0061:  brfalse.s  IL_0069

        IL_0063:  ldloc.1
        IL_0064:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0069:  endfinally
      }  // end handler
    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_006a:  stloc.3
      IL_006b:  ldstr      "Unable to sign content."
      IL_0070:  ldloc.3
      IL_0071:  newobj     instance void Jose.JoseException::.ctor(string,
                                                                   class [mscorlib]System.Exception)
      IL_0076:  throw

    }  // end handler
    IL_0077:  ldloc.2
    IL_0078:  ret
  } // end of method EcdsaUsingSha::Sign

  .method public hidebysig newslot virtual final 
          instance bool  Verify(uint8[] signature,
                                uint8[] securedInput,
                                object key) cil managed
  {
    // Code size       114 (0x72)
    .maxstack  5
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             class [System.Core]System.Security.Cryptography.ECDsaCng V_1,
             bool V_2)
    IL_0000:  ldarg.3
    IL_0001:  ldstr      "EcdsaUsingSha alg expects key to be of CngKey type."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<class [System.Core]System.Security.Cryptography.CngKey>(object,
                                                                                                       string,
                                                                                                       object[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  callvirt   instance int32 [System.Core]System.Security.Cryptography.CngKey::get_KeySize()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_001e:  ldstr      "ECDSA algorithm expected key of size {0} bits, but"
    + " was given {1} bits"
    IL_0023:  ldarg.0
    IL_0024:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_0029:  box        [mscorlib]System.Int32
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance int32 [System.Core]System.Security.Cryptography.CngKey::get_KeySize()
    IL_0034:  box        [mscorlib]System.Int32
    IL_0039:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003e:  call       void Jose.Ensure::BitSize(int32,
                                                   int32,
                                                   string)
    .try
    {
      IL_0043:  ldloc.0
      IL_0044:  newobj     instance void [System.Core]System.Security.Cryptography.ECDsaCng::.ctor(class [System.Core]System.Security.Cryptography.CngKey)
      IL_0049:  stloc.1
      .try
      {
        IL_004a:  ldloc.1
        IL_004b:  ldarg.0
        IL_004c:  call       instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.EcdsaUsingSha::get_Hash()
        IL_0051:  callvirt   instance void [System.Core]System.Security.Cryptography.ECDsaCng::set_HashAlgorithm(class [System.Core]System.Security.Cryptography.CngAlgorithm)
        IL_0056:  ldloc.1
        IL_0057:  ldarg.2
        IL_0058:  ldarg.1
        IL_0059:  callvirt   instance bool [System.Core]System.Security.Cryptography.ECDsaCng::VerifyData(uint8[],
                                                                                                          uint8[])
        IL_005e:  stloc.2
        IL_005f:  leave.s    IL_0070

      }  // end .try
      finally
      {
        IL_0061:  ldloc.1
        IL_0062:  brfalse.s  IL_006a

        IL_0064:  ldloc.1
        IL_0065:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_006a:  endfinally
      }  // end handler
    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_006b:  pop
      IL_006c:  ldc.i4.0
      IL_006d:  stloc.2
      IL_006e:  leave.s    IL_0070

    }  // end handler
    IL_0070:  ldloc.2
    IL_0071:  ret
  } // end of method EcdsaUsingSha::Verify

  .method family hidebysig specialname instance class [System.Core]System.Security.Cryptography.CngAlgorithm 
          get_Hash() cil managed
  {
    // Code size       84 (0x54)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_0006:  ldc.i4     0x100
    IL_000b:  bne.un.s   IL_0013

    IL_000d:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_0019:  ldc.i4     0x180
    IL_001e:  bne.un.s   IL_0026

    IL_0020:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha384()
    IL_0025:  ret

    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_002c:  ldc.i4     0x209
    IL_0031:  bne.un.s   IL_0039

    IL_0033:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha512()
    IL_0038:  ret

    IL_0039:  ldstr      "Unsupported key size: '{0} bytes'"
    IL_003e:  ldarg.0
    IL_003f:  ldfld      int32 Jose.EcdsaUsingSha::keySize
    IL_0044:  box        [mscorlib]System.Int32
    IL_0049:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_004e:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0053:  throw
  } // end of method EcdsaUsingSha::get_Hash

  .property instance class [System.Core]System.Security.Cryptography.CngAlgorithm
          Hash()
  {
    .get instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.EcdsaUsingSha::get_Hash()
  } // end of property EcdsaUsingSha::Hash
} // end of class Jose.EcdsaUsingSha

.class public auto ansi beforefieldinit Jose.HmacUsingSha
       extends [mscorlib]System.Object
       implements Jose.IJwsAlgorithm
{
  .field private string hashMethod
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string hashMethod) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Jose.HmacUsingSha::hashMethod
    IL_000d:  ret
  } // end of method HmacUsingSha::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Sign(uint8[] securedInput,
                                 object key) cil managed
  {
    // Code size       48 (0x30)
    .maxstack  3
    .locals init (uint8[] V_0,
             class [mscorlib]System.Security.Cryptography.KeyedHashAlgorithm V_1,
             uint8[] V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "HmacUsingSha alg expectes key to be byte[] array."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<uint8[]>(object,
                                                        string,
                                                        object[])
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldloc.0
    IL_0014:  call       instance class [mscorlib]System.Security.Cryptography.KeyedHashAlgorithm Jose.HmacUsingSha::KeyedHash(uint8[])
    IL_0019:  stloc.1
    .try
    {
      IL_001a:  ldloc.1
      IL_001b:  ldarg.1
      IL_001c:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_0021:  stloc.2
      IL_0022:  leave.s    IL_002e

    }  // end .try
    finally
    {
      IL_0024:  ldloc.1
      IL_0025:  brfalse.s  IL_002d

      IL_0027:  ldloc.1
      IL_0028:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_002d:  endfinally
    }  // end handler
    IL_002e:  ldloc.2
    IL_002f:  ret
  } // end of method HmacUsingSha::Sign

  .method public hidebysig newslot virtual final 
          instance bool  Verify(uint8[] signature,
                                uint8[] securedInput,
                                object key) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  3
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  call       instance uint8[] Jose.HmacUsingSha::Sign(uint8[],
                                                                  object)
    IL_0008:  stloc.0
    IL_0009:  ldarg.1
    IL_000a:  ldloc.0
    IL_000b:  call       bool Jose.Arrays::ConstantTimeEquals(uint8[],
                                                              uint8[])
    IL_0010:  ret
  } // end of method HmacUsingSha::Verify

  .method private hidebysig instance class [mscorlib]System.Security.Cryptography.KeyedHashAlgorithm 
          KeyedHash(uint8[] key) cil managed
  {
    // Code size       92 (0x5c)
    .maxstack  2
    IL_0000:  ldstr      "SHA256"
    IL_0005:  ldarg.0
    IL_0006:  ldfld      string Jose.HmacUsingSha::hashMethod
    IL_000b:  call       instance bool [mscorlib]System.String::Equals(string)
    IL_0010:  brfalse.s  IL_0019

    IL_0012:  ldarg.1
    IL_0013:  newobj     instance void [mscorlib]System.Security.Cryptography.HMACSHA256::.ctor(uint8[])
    IL_0018:  ret

    IL_0019:  ldstr      "SHA384"
    IL_001e:  ldarg.0
    IL_001f:  ldfld      string Jose.HmacUsingSha::hashMethod
    IL_0024:  call       instance bool [mscorlib]System.String::Equals(string)
    IL_0029:  brfalse.s  IL_0032

    IL_002b:  ldarg.1
    IL_002c:  newobj     instance void [mscorlib]System.Security.Cryptography.HMACSHA384::.ctor(uint8[])
    IL_0031:  ret

    IL_0032:  ldstr      "SHA512"
    IL_0037:  ldarg.0
    IL_0038:  ldfld      string Jose.HmacUsingSha::hashMethod
    IL_003d:  call       instance bool [mscorlib]System.String::Equals(string)
    IL_0042:  brfalse.s  IL_004b

    IL_0044:  ldarg.1
    IL_0045:  newobj     instance void [mscorlib]System.Security.Cryptography.HMACSHA512::.ctor(uint8[])
    IL_004a:  ret

    IL_004b:  ldstr      "Unsupported hashing algorithm: '{0}'"
    IL_0050:  ldarg.0
    IL_0051:  ldfld      string Jose.HmacUsingSha::hashMethod
    IL_0056:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string,
                                                                                 string)
    IL_005b:  throw
  } // end of method HmacUsingSha::KeyedHash

} // end of class Jose.HmacUsingSha

.class interface public abstract auto ansi Jose.IJwsAlgorithm
{
  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Sign(uint8[] securedInput,
                                 object key) cil managed
  {
  } // end of method IJwsAlgorithm::Sign

  .method public hidebysig newslot abstract virtual 
          instance bool  Verify(uint8[] signature,
                                uint8[] securedInput,
                                object key) cil managed
  {
  } // end of method IJwsAlgorithm::Verify

} // end of class Jose.IJwsAlgorithm

.class public auto ansi beforefieldinit Jose.Plaintext
       extends [mscorlib]System.Object
       implements Jose.IJwsAlgorithm
{
  .method public hidebysig newslot virtual final 
          instance uint8[]  Sign(uint8[] securedInput,
                                 object key) cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     uint8[] Jose.Arrays::Empty
    IL_0005:  ret
  } // end of method Plaintext::Sign

  .method public hidebysig newslot virtual final 
          instance bool  Verify(uint8[] signature,
                                uint8[] securedInput,
                                object key) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.3
    IL_0001:  ldstr      "Plaintext alg expectes key to be null."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       void Jose.Ensure::IsNull(object,
                                                  string,
                                                  object[])
    IL_0011:  ldarg.1
    IL_0012:  ldlen
    IL_0013:  ldc.i4.0
    IL_0014:  ceq
    IL_0016:  ret
  } // end of method Plaintext::Verify

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Plaintext::.ctor

} // end of class Jose.Plaintext

.class public auto ansi beforefieldinit Jose.RsaPssUsingSha
       extends [mscorlib]System.Object
       implements Jose.IJwsAlgorithm
{
  .field private int32 saltSize
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 saltSize) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Jose.RsaPssUsingSha::saltSize
    IL_000d:  ret
  } // end of method RsaPssUsingSha::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Sign(uint8[] securedInput,
                                 object key) cil managed
  {
    // Code size       126 (0x7e)
    .maxstack  4
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             uint8[] V_1,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_2,
             class [System.Core]System.Security.Cryptography.CngKey V_3,
             class [mscorlib]System.Security.Cryptography.CryptographicException V_4)
    IL_0000:  ldarg.2
    IL_0001:  isinst     [System.Core]System.Security.Cryptography.CngKey
    IL_0006:  brfalse.s  IL_0032

    IL_0008:  ldarg.2
    IL_0009:  castclass  [System.Core]System.Security.Cryptography.CngKey
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  ldarg.1
      IL_0010:  ldloc.0
      IL_0011:  ldarg.0
      IL_0012:  call       instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.RsaPssUsingSha::get_Hash()
      IL_0017:  ldarg.0
      IL_0018:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
      IL_001d:  call       uint8[] Jose.RsaPss::Sign(uint8[],
                                                     class [System.Core]System.Security.Cryptography.CngKey,
                                                     class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                     int32)
      IL_0022:  stloc.1
      IL_0023:  leave.s    IL_007c

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_0025:  stloc.2
      IL_0026:  ldstr      "Unable to sign content."
      IL_002b:  ldloc.2
      IL_002c:  newobj     instance void Jose.JoseException::.ctor(string,
                                                                   class [mscorlib]System.Exception)
      IL_0031:  throw

    }  // end handler
    IL_0032:  ldarg.2
    IL_0033:  isinst     [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0038:  brfalse.s  IL_0071

    IL_003a:  ldarg.2
    IL_003b:  castclass  [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0040:  ldc.i4.1
    IL_0041:  callvirt   instance valuetype [mscorlib]System.Security.Cryptography.RSAParameters [mscorlib]System.Security.Cryptography.RSA::ExportParameters(bool)
    IL_0046:  call       class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.RsaKey::New(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_004b:  stloc.3
    .try
    {
      IL_004c:  ldarg.1
      IL_004d:  ldloc.3
      IL_004e:  ldarg.0
      IL_004f:  call       instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.RsaPssUsingSha::get_Hash()
      IL_0054:  ldarg.0
      IL_0055:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
      IL_005a:  call       uint8[] Jose.RsaPss::Sign(uint8[],
                                                     class [System.Core]System.Security.Cryptography.CngKey,
                                                     class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                     int32)
      IL_005f:  stloc.1
      IL_0060:  leave.s    IL_007c

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_0062:  stloc.s    V_4
      IL_0064:  ldstr      "Unable to sign content."
      IL_0069:  ldloc.s    V_4
      IL_006b:  newobj     instance void Jose.JoseException::.ctor(string,
                                                                   class [mscorlib]System.Exception)
      IL_0070:  throw

    }  // end handler
    IL_0071:  ldstr      "RsaUsingSha with PSS padding alg expects key to be"
    + " of CngKey type."
    IL_0076:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_007b:  throw

    IL_007c:  ldloc.1
    IL_007d:  ret
  } // end of method RsaPssUsingSha::Sign

  .method public hidebysig newslot virtual final 
          instance bool  Verify(uint8[] signature,
                                uint8[] securedInput,
                                object key) cil managed
  {
    // Code size       110 (0x6e)
    .maxstack  5
    .locals init (class [System.Core]System.Security.Cryptography.CngKey V_0,
             bool V_1,
             class [System.Core]System.Security.Cryptography.CngKey V_2)
    IL_0000:  ldarg.3
    IL_0001:  isinst     [System.Core]System.Security.Cryptography.CngKey
    IL_0006:  brfalse.s  IL_002b

    IL_0008:  ldarg.3
    IL_0009:  castclass  [System.Core]System.Security.Cryptography.CngKey
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  ldarg.2
      IL_0010:  ldarg.1
      IL_0011:  ldloc.0
      IL_0012:  ldarg.0
      IL_0013:  call       instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.RsaPssUsingSha::get_Hash()
      IL_0018:  ldarg.0
      IL_0019:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
      IL_001e:  call       bool Jose.RsaPss::Verify(uint8[],
                                                    uint8[],
                                                    class [System.Core]System.Security.Cryptography.CngKey,
                                                    class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                    int32)
      IL_0023:  stloc.1
      IL_0024:  leave.s    IL_006c

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_0026:  pop
      IL_0027:  ldc.i4.0
      IL_0028:  stloc.1
      IL_0029:  leave.s    IL_006c

    }  // end handler
    IL_002b:  ldarg.3
    IL_002c:  isinst     [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0031:  brfalse.s  IL_0061

    IL_0033:  ldarg.3
    IL_0034:  castclass  [mscorlib]System.Security.Cryptography.RSACryptoServiceProvider
    IL_0039:  ldc.i4.0
    IL_003a:  callvirt   instance valuetype [mscorlib]System.Security.Cryptography.RSAParameters [mscorlib]System.Security.Cryptography.RSA::ExportParameters(bool)
    IL_003f:  call       class [System.Core]System.Security.Cryptography.CngKey Security.Cryptography.RsaKey::New(valuetype [mscorlib]System.Security.Cryptography.RSAParameters)
    IL_0044:  stloc.2
    .try
    {
      IL_0045:  ldarg.2
      IL_0046:  ldarg.1
      IL_0047:  ldloc.2
      IL_0048:  ldarg.0
      IL_0049:  call       instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.RsaPssUsingSha::get_Hash()
      IL_004e:  ldarg.0
      IL_004f:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
      IL_0054:  call       bool Jose.RsaPss::Verify(uint8[],
                                                    uint8[],
                                                    class [System.Core]System.Security.Cryptography.CngKey,
                                                    class [System.Core]System.Security.Cryptography.CngAlgorithm,
                                                    int32)
      IL_0059:  stloc.1
      IL_005a:  leave.s    IL_006c

    }  // end .try
    catch [mscorlib]System.Security.Cryptography.CryptographicException 
    {
      IL_005c:  pop
      IL_005d:  ldc.i4.0
      IL_005e:  stloc.1
      IL_005f:  leave.s    IL_006c

    }  // end handler
    IL_0061:  ldstr      "RsaUsingSha with PSS padding alg expects key to be"
    + " of CngKey type."
    IL_0066:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_006b:  throw

    IL_006c:  ldloc.1
    IL_006d:  ret
  } // end of method RsaPssUsingSha::Verify

  .method private hidebysig specialname instance class [System.Core]System.Security.Cryptography.CngAlgorithm 
          get_Hash() cil managed
  {
    // Code size       75 (0x4b)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
    IL_0006:  ldc.i4.s   32
    IL_0008:  bne.un.s   IL_0010

    IL_000a:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha256()
    IL_000f:  ret

    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
    IL_0016:  ldc.i4.s   48
    IL_0018:  bne.un.s   IL_0020

    IL_001a:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha384()
    IL_001f:  ret

    IL_0020:  ldarg.0
    IL_0021:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
    IL_0026:  ldc.i4.s   64
    IL_0028:  bne.un.s   IL_0030

    IL_002a:  call       class [System.Core]System.Security.Cryptography.CngAlgorithm [System.Core]System.Security.Cryptography.CngAlgorithm::get_Sha512()
    IL_002f:  ret

    IL_0030:  ldstr      "Unsupported salt size: '{0} bytes'"
    IL_0035:  ldarg.0
    IL_0036:  ldfld      int32 Jose.RsaPssUsingSha::saltSize
    IL_003b:  box        [mscorlib]System.Int32
    IL_0040:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0045:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_004a:  throw
  } // end of method RsaPssUsingSha::get_Hash

  .property instance class [System.Core]System.Security.Cryptography.CngAlgorithm
          Hash()
  {
    .get instance class [System.Core]System.Security.Cryptography.CngAlgorithm Jose.RsaPssUsingSha::get_Hash()
  } // end of property RsaPssUsingSha::Hash
} // end of class Jose.RsaPssUsingSha

.class public auto ansi beforefieldinit Jose.RsaUsingSha
       extends [mscorlib]System.Object
       implements Jose.IJwsAlgorithm
{
  .field private string hashMethod
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string hashMethod) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string Jose.RsaUsingSha::hashMethod
    IL_000d:  ret
  } // end of method RsaUsingSha::.ctor

  .method public hidebysig newslot virtual final 
          instance uint8[]  Sign(uint8[] securedInput,
                                 object key) cil managed
  {
    // Code size       70 (0x46)
    .maxstack  3
    .locals init (class [mscorlib]System.Security.Cryptography.RSA V_0,
             class [mscorlib]System.Security.Cryptography.HashAlgorithm V_1,
             uint8[] V_2)
    IL_0000:  ldarg.2
    IL_0001:  ldstr      "RsaUsingSha alg expects key to be of AsymmetricAlg"
    + "orithm type."
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  call       !!0 Jose.Ensure::Type<class [mscorlib]System.Security.Cryptography.RSA>(object,
                                                                                                 string,
                                                                                                 object[])
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  call       instance class [mscorlib]System.Security.Cryptography.HashAlgorithm Jose.RsaUsingSha::get_HashAlgorithm()
    IL_0018:  stloc.1
    .try
    {
      IL_0019:  ldloc.0
      IL_001a:  newobj     instance void [mscorlib]System.Security.Cryptography.RSAPKCS1SignatureFormatter::.ctor(class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm)
      IL_001f:  dup
      IL_0020:  ldarg.0
      IL_0021:  ldfld      string Jose.RsaUsingSha::hashMethod
      IL_0026:  callvirt   instance void [mscorlib]System.Security.Cryptography.AsymmetricSignatureFormatter::SetHashAlgorithm(string)
      IL_002b:  ldloc.1
      IL_002c:  ldarg.1
      IL_002d:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_0032:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.AsymmetricSignatureFormatter::CreateSignature(uint8[])
      IL_0037:  stloc.2
      IL_0038:  leave.s    IL_0044

    }  // end .try
    finally
    {
      IL_003a:  ldloc.1
      IL_003b:  brfalse.s  IL_0043

      IL_003d:  ldloc.1
      IL_003e:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ldloc.2
    IL_0045:  ret
  } // end of method RsaUsingSha::Sign

  .method public hidebysig newslot virtual final 
          instance bool  Verify(uint8[] signature,
                                uint8[] securedInput,
                                object key) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  3
    .locals init (class [mscorlib]System.Security.Cryptography.HashAlgorithm V_0,
             uint8[] V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [mscorlib]System.Security.Cryptography.HashAlgorithm Jose.RsaUsingSha::get_HashAlgorithm()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  ldarg.3
      IL_0008:  ldstr      "RsaUsingSha alg expects key to be of AsymmetricAlg"
      + "orithm type."
      IL_000d:  ldc.i4.0
      IL_000e:  newarr     [mscorlib]System.Object
      IL_0013:  call       !!0 Jose.Ensure::Type<class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm>(object,
                                                                                                                   string,
                                                                                                                   object[])
      IL_0018:  ldloc.0
      IL_0019:  ldarg.2
      IL_001a:  callvirt   instance uint8[] [mscorlib]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
      IL_001f:  stloc.1
      IL_0020:  newobj     instance void [mscorlib]System.Security.Cryptography.RSAPKCS1SignatureDeformatter::.ctor(class [mscorlib]System.Security.Cryptography.AsymmetricAlgorithm)
      IL_0025:  dup
      IL_0026:  ldarg.0
      IL_0027:  ldfld      string Jose.RsaUsingSha::hashMethod
      IL_002c:  callvirt   instance void [mscorlib]System.Security.Cryptography.AsymmetricSignatureDeformatter::SetHashAlgorithm(string)
      IL_0031:  ldloc.1
      IL_0032:  ldarg.1
      IL_0033:  callvirt   instance bool [mscorlib]System.Security.Cryptography.AsymmetricSignatureDeformatter::VerifySignature(uint8[],
                                                                                                                                uint8[])
      IL_0038:  stloc.2
      IL_0039:  leave.s    IL_0045

    }  // end .try
    finally
    {
      IL_003b:  ldloc.0
      IL_003c:  brfalse.s  IL_0044

      IL_003e:  ldloc.0
      IL_003f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0044:  endfinally
    }  // end handler
    IL_0045:  ldloc.2
    IL_0046:  ret
  } // end of method RsaUsingSha::Verify

  .method private hidebysig specialname instance class [mscorlib]System.Security.Cryptography.HashAlgorithm 
          get_HashAlgorithm() cil managed
  {
    // Code size       89 (0x59)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Jose.RsaUsingSha::hashMethod
    IL_0006:  ldstr      "SHA256"
    IL_000b:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0010:  brfalse.s  IL_0018

    IL_0012:  newobj     instance void [System.Core]System.Security.Cryptography.SHA256CryptoServiceProvider::.ctor()
    IL_0017:  ret

    IL_0018:  ldarg.0
    IL_0019:  ldfld      string Jose.RsaUsingSha::hashMethod
    IL_001e:  ldstr      "SHA384"
    IL_0023:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0028:  brfalse.s  IL_0030

    IL_002a:  newobj     instance void [System.Core]System.Security.Cryptography.SHA384CryptoServiceProvider::.ctor()
    IL_002f:  ret

    IL_0030:  ldarg.0
    IL_0031:  ldfld      string Jose.RsaUsingSha::hashMethod
    IL_0036:  ldstr      "SHA512"
    IL_003b:  callvirt   instance bool [mscorlib]System.String::Equals(string)
    IL_0040:  brfalse.s  IL_0048

    IL_0042:  newobj     instance void [System.Core]System.Security.Cryptography.SHA512CryptoServiceProvider::.ctor()
    IL_0047:  ret

    IL_0048:  ldstr      "Unsupported hashing algorithm: '{0}'"
    IL_004d:  ldarg.0
    IL_004e:  ldfld      string Jose.RsaUsingSha::hashMethod
    IL_0053:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string,
                                                                                 string)
    IL_0058:  throw
  } // end of method RsaUsingSha::get_HashAlgorithm

  .property instance class [mscorlib]System.Security.Cryptography.HashAlgorithm
          HashAlgorithm()
  {
    .get instance class [mscorlib]System.Security.Cryptography.HashAlgorithm Jose.RsaUsingSha::get_HashAlgorithm()
  } // end of property RsaUsingSha::HashAlgorithm
} // end of class Jose.RsaUsingSha

.class public auto ansi beforefieldinit Jose.Arrays
       extends [mscorlib]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Jose.Arrays/'<>c' '<>9'
    .field public static class [mscorlib]System.Func`2<uint8[],int32> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Jose.Arrays/'<>c'::.ctor()
      IL_0005:  stsfld     class Jose.Arrays/'<>c' Jose.Arrays/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<Concat>b__5_0'(uint8[] a) cil managed
    {
      // Code size       9 (0x9)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0007

      IL_0003:  ldarg.1
      IL_0004:  ldlen
      IL_0005:  conv.i4
      IL_0006:  ret

      IL_0007:  ldc.i4.0
      IL_0008:  ret
    } // end of method '<>c'::'<Concat>b__5_0'

  } // end of class '<>c'

  .field public static initonly uint8[] Empty
  .field public static initonly uint8[] Zero
  .field private static class [mscorlib]System.Security.Cryptography.RandomNumberGenerator rng
  .method public hidebysig static uint8[] 
          FirstHalf(uint8[] arr) cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  5
    .locals init (int32 V_0,
             uint8[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  ldc.i4.2
    IL_0004:  ldstr      "Arrays.FirstHalf() expects even number of element "
    + "in array."
    IL_0009:  ldc.i4.0
    IL_000a:  newarr     [mscorlib]System.Object
    IL_000f:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_0014:  ldarg.0
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  ldc.i4.2
    IL_0018:  div
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  newarr     [mscorlib]System.Byte
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldc.i4.0
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.0
    IL_0025:  ldloc.0
    IL_0026:  call       void [mscorlib]System.Buffer::BlockCopy(class [mscorlib]System.Array,
                                                                 int32,
                                                                 class [mscorlib]System.Array,
                                                                 int32,
                                                                 int32)
    IL_002b:  ldloc.1
    IL_002c:  ret
  } // end of method Arrays::FirstHalf

  .method public hidebysig static uint8[] 
          SecondHalf(uint8[] arr) cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  5
    .locals init (int32 V_0,
             uint8[] V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  ldc.i4.2
    IL_0004:  ldstr      "Arrays.SecondHalf() expects even number of element"
    + " in array."
    IL_0009:  ldc.i4.0
    IL_000a:  newarr     [mscorlib]System.Object
    IL_000f:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_0014:  ldarg.0
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  ldc.i4.2
    IL_0018:  div
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  newarr     [mscorlib]System.Byte
    IL_0020:  stloc.1
    IL_0021:  ldarg.0
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.0
    IL_0025:  ldloc.0
    IL_0026:  call       void [mscorlib]System.Buffer::BlockCopy(class [mscorlib]System.Array,
                                                                 int32,
                                                                 class [mscorlib]System.Array,
                                                                 int32,
                                                                 int32)
    IL_002b:  ldloc.1
    IL_002c:  ret
  } // end of method Arrays::SecondHalf

  .method public hidebysig static uint8[] 
          Concat(uint8[][] arrays) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       93 (0x5d)
    .maxstack  5
    .locals init (uint8[] V_0,
             int32 V_1,
             uint8[][] V_2,
             int32 V_3,
             uint8[] V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [mscorlib]System.Func`2<uint8[],int32> Jose.Arrays/'<>c'::'<>9__5_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class Jose.Arrays/'<>c' Jose.Arrays/'<>c'::'<>9'
    IL_000f:  ldftn      instance int32 Jose.Arrays/'<>c'::'<Concat>b__5_0'(uint8[])
    IL_0015:  newobj     instance void class [mscorlib]System.Func`2<uint8[],int32>::.ctor(object,
                                                                                           native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [mscorlib]System.Func`2<uint8[],int32> Jose.Arrays/'<>c'::'<>9__5_0'
    IL_0020:  call       int32 [System.Core]System.Linq.Enumerable::Sum<uint8[]>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                 class [mscorlib]System.Func`2<!!0,int32>)
    IL_0025:  newarr     [mscorlib]System.Byte
    IL_002a:  stloc.0
    IL_002b:  ldc.i4.0
    IL_002c:  stloc.1
    IL_002d:  ldarg.0
    IL_002e:  stloc.2
    IL_002f:  ldc.i4.0
    IL_0030:  stloc.3
    IL_0031:  br.s       IL_0055

    IL_0033:  ldloc.2
    IL_0034:  ldloc.3
    IL_0035:  ldelem.ref
    IL_0036:  stloc.s    V_4
    IL_0038:  ldloc.s    V_4
    IL_003a:  brfalse.s  IL_0051

    IL_003c:  ldloc.s    V_4
    IL_003e:  ldc.i4.0
    IL_003f:  ldloc.0
    IL_0040:  ldloc.1
    IL_0041:  ldloc.s    V_4
    IL_0043:  ldlen
    IL_0044:  conv.i4
    IL_0045:  call       void [mscorlib]System.Buffer::BlockCopy(class [mscorlib]System.Array,
                                                                 int32,
                                                                 class [mscorlib]System.Array,
                                                                 int32,
                                                                 int32)
    IL_004a:  ldloc.1
    IL_004b:  ldloc.s    V_4
    IL_004d:  ldlen
    IL_004e:  conv.i4
    IL_004f:  add
    IL_0050:  stloc.1
    IL_0051:  ldloc.3
    IL_0052:  ldc.i4.1
    IL_0053:  add
    IL_0054:  stloc.3
    IL_0055:  ldloc.3
    IL_0056:  ldloc.2
    IL_0057:  ldlen
    IL_0058:  conv.i4
    IL_0059:  blt.s      IL_0033

    IL_005b:  ldloc.0
    IL_005c:  ret
  } // end of method Arrays::Concat

  .method public hidebysig static uint8[][] 
          Slice(uint8[] 'array',
                int32 count) cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  7
    .locals init (int32 V_0,
             uint8[][] V_1,
             int32 V_2,
             uint8[] V_3)
    IL_0000:  ldarg.1
    IL_0001:  conv.i8
    IL_0002:  ldc.i4.1
    IL_0003:  conv.i8
    IL_0004:  ldstr      "Arrays.Slice() expects count to be above zero, but"
    + " was {0}"
    IL_0009:  ldc.i4.1
    IL_000a:  newarr     [mscorlib]System.Object
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldarg.1
    IL_0012:  box        [mscorlib]System.Int32
    IL_0017:  stelem.ref
    IL_0018:  call       void Jose.Ensure::MinValue(int64,
                                                    int64,
                                                    string,
                                                    object[])
    IL_001d:  ldarg.0
    IL_001e:  ldlen
    IL_001f:  conv.i4
    IL_0020:  ldarg.1
    IL_0021:  ldstr      "Arrays.Slice() expects array length to be divisibl"
    + "e by {0}"
    IL_0026:  ldc.i4.1
    IL_0027:  newarr     [mscorlib]System.Object
    IL_002c:  dup
    IL_002d:  ldc.i4.0
    IL_002e:  ldarg.1
    IL_002f:  box        [mscorlib]System.Int32
    IL_0034:  stelem.ref
    IL_0035:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_003a:  ldarg.0
    IL_003b:  ldlen
    IL_003c:  conv.i4
    IL_003d:  ldarg.1
    IL_003e:  div
    IL_003f:  stloc.0
    IL_0040:  ldloc.0
    IL_0041:  newarr     uint8[]
    IL_0046:  stloc.1
    IL_0047:  ldc.i4.0
    IL_0048:  stloc.2
    IL_0049:  br.s       IL_0066

    IL_004b:  ldarg.1
    IL_004c:  newarr     [mscorlib]System.Byte
    IL_0051:  stloc.3
    IL_0052:  ldarg.0
    IL_0053:  ldloc.2
    IL_0054:  ldarg.1
    IL_0055:  mul
    IL_0056:  ldloc.3
    IL_0057:  ldc.i4.0
    IL_0058:  ldarg.1
    IL_0059:  call       void [mscorlib]System.Buffer::BlockCopy(class [mscorlib]System.Array,
                                                                 int32,
                                                                 class [mscorlib]System.Array,
                                                                 int32,
                                                                 int32)
    IL_005e:  ldloc.1
    IL_005f:  ldloc.2
    IL_0060:  ldloc.3
    IL_0061:  stelem.ref
    IL_0062:  ldloc.2
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.2
    IL_0066:  ldloc.2
    IL_0067:  ldloc.0
    IL_0068:  blt.s      IL_004b

    IL_006a:  ldloc.1
    IL_006b:  ret
  } // end of method Arrays::Slice

  .method public hidebysig static uint8[] 
          Xor(uint8[] left,
              int64 right) cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   64
    IL_0003:  conv.i8
    IL_0004:  ldstr      "Arrays.Xor(byte[], long) expects array size to be "
    + "8 bytes, but was {0}"
    IL_0009:  ldc.i4.1
    IL_000a:  newarr     [mscorlib]System.Object
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldarg.0
    IL_0012:  ldlen
    IL_0013:  conv.i4
    IL_0014:  box        [mscorlib]System.Int32
    IL_0019:  stelem.ref
    IL_001a:  call       void Jose.Ensure::BitSize(uint8[],
                                                   int64,
                                                   string,
                                                   object[])
    IL_001f:  ldarg.0
    IL_0020:  call       int64 Jose.Arrays::BytesToLong(uint8[])
    IL_0025:  ldarg.1
    IL_0026:  xor
    IL_0027:  call       uint8[] Jose.Arrays::LongToBytes(int64)
    IL_002c:  ret
  } // end of method Arrays::Xor

  .method public hidebysig static uint8[] 
          Xor(uint8[] left,
              uint8[] right) cil managed
  {
    // Code size       76 (0x4c)
    .maxstack  7
    .locals init (uint8[] V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Arrays.Xor(byte[], byte[]) expects both arrays to "
    + "be same legnth, but was given {0} and {1}"
    IL_0007:  ldc.i4.2
    IL_0008:  newarr     [mscorlib]System.Object
    IL_000d:  dup
    IL_000e:  ldc.i4.0
    IL_000f:  ldarg.0
    IL_0010:  ldlen
    IL_0011:  conv.i4
    IL_0012:  box        [mscorlib]System.Int32
    IL_0017:  stelem.ref
    IL_0018:  dup
    IL_0019:  ldc.i4.1
    IL_001a:  ldarg.1
    IL_001b:  ldlen
    IL_001c:  conv.i4
    IL_001d:  box        [mscorlib]System.Int32
    IL_0022:  stelem.ref
    IL_0023:  call       void Jose.Ensure::SameSize(uint8[],
                                                    uint8[],
                                                    string,
                                                    object[])
    IL_0028:  ldarg.0
    IL_0029:  ldlen
    IL_002a:  conv.i4
    IL_002b:  newarr     [mscorlib]System.Byte
    IL_0030:  stloc.0
    IL_0031:  ldc.i4.0
    IL_0032:  stloc.1
    IL_0033:  br.s       IL_0044

    IL_0035:  ldloc.0
    IL_0036:  ldloc.1
    IL_0037:  ldarg.0
    IL_0038:  ldloc.1
    IL_0039:  ldelem.u1
    IL_003a:  ldarg.1
    IL_003b:  ldloc.1
    IL_003c:  ldelem.u1
    IL_003d:  xor
    IL_003e:  conv.u1
    IL_003f:  stelem.i1
    IL_0040:  ldloc.1
    IL_0041:  ldc.i4.1
    IL_0042:  add
    IL_0043:  stloc.1
    IL_0044:  ldloc.1
    IL_0045:  ldarg.0
    IL_0046:  ldlen
    IL_0047:  conv.i4
    IL_0048:  blt.s      IL_0035

    IL_004a:  ldloc.0
    IL_004b:  ret
  } // end of method Arrays::Xor

  .method public hidebysig static bool  ConstantTimeEquals(uint8[] expected,
                                                           uint8[] actual) cil managed
  {
    // Code size       57 (0x39)
    .maxstack  4
    .locals init (uint8 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  bne.un.s   IL_0006

    IL_0004:  ldc.i4.1
    IL_0005:  ret

    IL_0006:  ldarg.0
    IL_0007:  brfalse.s  IL_000c

    IL_0009:  ldarg.1
    IL_000a:  brtrue.s   IL_000e

    IL_000c:  ldc.i4.0
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  ldlen
    IL_0010:  conv.i4
    IL_0011:  ldarg.1
    IL_0012:  ldlen
    IL_0013:  conv.i4
    IL_0014:  beq.s      IL_0018

    IL_0016:  ldc.i4.0
    IL_0017:  ret

    IL_0018:  ldc.i4.0
    IL_0019:  stloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.1
    IL_001c:  br.s       IL_002e

    IL_001e:  ldloc.0
    IL_001f:  ldarg.0
    IL_0020:  ldloc.1
    IL_0021:  ldelem.u1
    IL_0022:  ldarg.1
    IL_0023:  ldloc.1
    IL_0024:  ldelem.u1
    IL_0025:  xor
    IL_0026:  conv.u1
    IL_0027:  or
    IL_0028:  conv.u1
    IL_0029:  stloc.0
    IL_002a:  ldloc.1
    IL_002b:  ldc.i4.1
    IL_002c:  add
    IL_002d:  stloc.1
    IL_002e:  ldloc.1
    IL_002f:  ldarg.0
    IL_0030:  ldlen
    IL_0031:  conv.i4
    IL_0032:  blt.s      IL_001e

    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.0
    IL_0036:  ceq
    IL_0038:  ret
  } // end of method Arrays::ConstantTimeEquals

  .method public hidebysig static string 
          Dump(uint8[] arr,
               [opt] string label) cil managed
  {
    .param [2] = ""
    // Code size       181 (0xb5)
    .maxstack  4
    .locals init (class [mscorlib]System.Text.StringBuilder V_0,
             uint8[] V_1,
             int32 V_2,
             uint8 V_3)
    IL_0000:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldstr      "{0}({1} bytes): ["
    IL_000c:  ldarg.1
    IL_000d:  ldstr      " "
    IL_0012:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0017:  ldarg.0
    IL_0018:  ldlen
    IL_0019:  conv.i4
    IL_001a:  box        [mscorlib]System.Int32
    IL_001f:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0024:  callvirt   instance string [mscorlib]System.String::Trim()
    IL_0029:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_002e:  pop
    IL_002f:  ldarg.0
    IL_0030:  stloc.1
    IL_0031:  ldc.i4.0
    IL_0032:  stloc.2
    IL_0033:  br.s       IL_0051

    IL_0035:  ldloc.1
    IL_0036:  ldloc.2
    IL_0037:  ldelem.u1
    IL_0038:  stloc.3
    IL_0039:  ldloc.0
    IL_003a:  ldloc.3
    IL_003b:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(uint8)
    IL_0040:  pop
    IL_0041:  ldloc.0
    IL_0042:  ldstr      ","
    IL_0047:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_004c:  pop
    IL_004d:  ldloc.2
    IL_004e:  ldc.i4.1
    IL_004f:  add
    IL_0050:  stloc.2
    IL_0051:  ldloc.2
    IL_0052:  ldloc.1
    IL_0053:  ldlen
    IL_0054:  conv.i4
    IL_0055:  blt.s      IL_0035

    IL_0057:  ldloc.0
    IL_0058:  ldloc.0
    IL_0059:  callvirt   instance int32 [mscorlib]System.Text.StringBuilder::get_Length()
    IL_005e:  ldc.i4.1
    IL_005f:  sub
    IL_0060:  ldc.i4.1
    IL_0061:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Remove(int32,
                                                                                                                        int32)
    IL_0066:  pop
    IL_0067:  ldloc.0
    IL_0068:  ldstr      "] Hex:["
    IL_006d:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0072:  ldarg.0
    IL_0073:  call       string [mscorlib]System.BitConverter::ToString(uint8[])
    IL_0078:  ldstr      "-"
    IL_007d:  ldstr      " "
    IL_0082:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_0087:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_008c:  pop
    IL_008d:  ldloc.0
    IL_008e:  ldstr      "] Base64Url:"
    IL_0093:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0098:  ldarg.0
    IL_0099:  call       string Jose.Base64Url::Encode(uint8[])
    IL_009e:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00a3:  ldstr      "\n"
    IL_00a8:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_00ad:  pop
    IL_00ae:  ldloc.0
    IL_00af:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_00b4:  ret
  } // end of method Arrays::Dump

  .method public hidebysig static uint8[] 
          Random([opt] int32 sizeBits) cil managed
  {
    .param [1] = int32(0x00000080)
    // Code size       22 (0x16)
    .maxstack  2
    .locals init (uint8[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.8
    IL_0002:  div
    IL_0003:  newarr     [mscorlib]System.Byte
    IL_0008:  stloc.0
    IL_0009:  call       class [mscorlib]System.Security.Cryptography.RandomNumberGenerator Jose.Arrays::get_RNG()
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance void [mscorlib]System.Security.Cryptography.RandomNumberGenerator::GetBytes(uint8[])
    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method Arrays::Random

  .method assembly hidebysig specialname static 
          class [mscorlib]System.Security.Cryptography.RandomNumberGenerator 
          get_RNG() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     class [mscorlib]System.Security.Cryptography.RandomNumberGenerator Jose.Arrays::rng
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_0014

    IL_0008:  pop
    IL_0009:  call       class [mscorlib]System.Security.Cryptography.RandomNumberGenerator [mscorlib]System.Security.Cryptography.RandomNumberGenerator::Create()
    IL_000e:  dup
    IL_000f:  stsfld     class [mscorlib]System.Security.Cryptography.RandomNumberGenerator Jose.Arrays::rng
    IL_0014:  ret
  } // end of method Arrays::get_RNG

  .method public hidebysig static uint8[] 
          IntToBytes(int32 'value') cil managed
  {
    // Code size       127 (0x7f)
    .maxstack  5
    .locals init (uint32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    IL_0002:  ldsfld     bool [mscorlib]System.BitConverter::IsLittleEndian
    IL_0007:  brtrue.s   IL_0044

    IL_0009:  ldc.i4.4
    IL_000a:  newarr     [mscorlib]System.Byte
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4     0xff
    IL_0017:  and
    IL_0018:  conv.u1
    IL_0019:  stelem.i1
    IL_001a:  dup
    IL_001b:  ldc.i4.1
    IL_001c:  ldloc.0
    IL_001d:  ldc.i4.8
    IL_001e:  shr.un
    IL_001f:  ldc.i4     0xff
    IL_0024:  and
    IL_0025:  conv.u1
    IL_0026:  stelem.i1
    IL_0027:  dup
    IL_0028:  ldc.i4.2
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.s   16
    IL_002c:  shr.un
    IL_002d:  ldc.i4     0xff
    IL_0032:  and
    IL_0033:  conv.u1
    IL_0034:  stelem.i1
    IL_0035:  dup
    IL_0036:  ldc.i4.3
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.s   24
    IL_003a:  shr.un
    IL_003b:  ldc.i4     0xff
    IL_0040:  and
    IL_0041:  conv.u1
    IL_0042:  stelem.i1
    IL_0043:  ret

    IL_0044:  ldc.i4.4
    IL_0045:  newarr     [mscorlib]System.Byte
    IL_004a:  dup
    IL_004b:  ldc.i4.0
    IL_004c:  ldloc.0
    IL_004d:  ldc.i4.s   24
    IL_004f:  shr.un
    IL_0050:  ldc.i4     0xff
    IL_0055:  and
    IL_0056:  conv.u1
    IL_0057:  stelem.i1
    IL_0058:  dup
    IL_0059:  ldc.i4.1
    IL_005a:  ldloc.0
    IL_005b:  ldc.i4.s   16
    IL_005d:  shr.un
    IL_005e:  ldc.i4     0xff
    IL_0063:  and
    IL_0064:  conv.u1
    IL_0065:  stelem.i1
    IL_0066:  dup
    IL_0067:  ldc.i4.2
    IL_0068:  ldloc.0
    IL_0069:  ldc.i4.8
    IL_006a:  shr.un
    IL_006b:  ldc.i4     0xff
    IL_0070:  and
    IL_0071:  conv.u1
    IL_0072:  stelem.i1
    IL_0073:  dup
    IL_0074:  ldc.i4.3
    IL_0075:  ldloc.0
    IL_0076:  ldc.i4     0xff
    IL_007b:  and
    IL_007c:  conv.u1
    IL_007d:  stelem.i1
    IL_007e:  ret
  } // end of method Arrays::IntToBytes

  .method public hidebysig static uint8[] 
          LongToBytes(int64 'value') cil managed
  {
    // Code size       255 (0xff)
    .maxstack  5
    .locals init (uint64 V_0)
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    IL_0002:  ldsfld     bool [mscorlib]System.BitConverter::IsLittleEndian
    IL_0007:  brtrue.s   IL_0084

    IL_0009:  ldc.i4.8
    IL_000a:  newarr     [mscorlib]System.Byte
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4     0xff
    IL_0017:  conv.i8
    IL_0018:  and
    IL_0019:  conv.u1
    IL_001a:  stelem.i1
    IL_001b:  dup
    IL_001c:  ldc.i4.1
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.8
    IL_001f:  shr.un
    IL_0020:  ldc.i4     0xff
    IL_0025:  conv.i8
    IL_0026:  and
    IL_0027:  conv.u1
    IL_0028:  stelem.i1
    IL_0029:  dup
    IL_002a:  ldc.i4.2
    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.s   16
    IL_002e:  shr.un
    IL_002f:  ldc.i4     0xff
    IL_0034:  conv.i8
    IL_0035:  and
    IL_0036:  conv.u1
    IL_0037:  stelem.i1
    IL_0038:  dup
    IL_0039:  ldc.i4.3
    IL_003a:  ldloc.0
    IL_003b:  ldc.i4.s   24
    IL_003d:  shr.un
    IL_003e:  ldc.i4     0xff
    IL_0043:  conv.i8
    IL_0044:  and
    IL_0045:  conv.u1
    IL_0046:  stelem.i1
    IL_0047:  dup
    IL_0048:  ldc.i4.4
    IL_0049:  ldloc.0
    IL_004a:  ldc.i4.s   32
    IL_004c:  shr.un
    IL_004d:  ldc.i4     0xff
    IL_0052:  conv.i8
    IL_0053:  and
    IL_0054:  conv.u1
    IL_0055:  stelem.i1
    IL_0056:  dup
    IL_0057:  ldc.i4.5
    IL_0058:  ldloc.0
    IL_0059:  ldc.i4.s   40
    IL_005b:  shr.un
    IL_005c:  ldc.i4     0xff
    IL_0061:  conv.i8
    IL_0062:  and
    IL_0063:  conv.u1
    IL_0064:  stelem.i1
    IL_0065:  dup
    IL_0066:  ldc.i4.6
    IL_0067:  ldloc.0
    IL_0068:  ldc.i4.s   48
    IL_006a:  shr.un
    IL_006b:  ldc.i4     0xff
    IL_0070:  conv.i8
    IL_0071:  and
    IL_0072:  conv.u1
    IL_0073:  stelem.i1
    IL_0074:  dup
    IL_0075:  ldc.i4.7
    IL_0076:  ldloc.0
    IL_0077:  ldc.i4.s   56
    IL_0079:  shr.un
    IL_007a:  ldc.i4     0xff
    IL_007f:  conv.i8
    IL_0080:  and
    IL_0081:  conv.u1
    IL_0082:  stelem.i1
    IL_0083:  ret

    IL_0084:  ldc.i4.8
    IL_0085:  newarr     [mscorlib]System.Byte
    IL_008a:  dup
    IL_008b:  ldc.i4.0
    IL_008c:  ldloc.0
    IL_008d:  ldc.i4.s   56
    IL_008f:  shr.un
    IL_0090:  ldc.i4     0xff
    IL_0095:  conv.i8
    IL_0096:  and
    IL_0097:  conv.u1
    IL_0098:  stelem.i1
    IL_0099:  dup
    IL_009a:  ldc.i4.1
    IL_009b:  ldloc.0
    IL_009c:  ldc.i4.s   48
    IL_009e:  shr.un
    IL_009f:  ldc.i4     0xff
    IL_00a4:  conv.i8
    IL_00a5:  and
    IL_00a6:  conv.u1
    IL_00a7:  stelem.i1
    IL_00a8:  dup
    IL_00a9:  ldc.i4.2
    IL_00aa:  ldloc.0
    IL_00ab:  ldc.i4.s   40
    IL_00ad:  shr.un
    IL_00ae:  ldc.i4     0xff
    IL_00b3:  conv.i8
    IL_00b4:  and
    IL_00b5:  conv.u1
    IL_00b6:  stelem.i1
    IL_00b7:  dup
    IL_00b8:  ldc.i4.3
    IL_00b9:  ldloc.0
    IL_00ba:  ldc.i4.s   32
    IL_00bc:  shr.un
    IL_00bd:  ldc.i4     0xff
    IL_00c2:  conv.i8
    IL_00c3:  and
    IL_00c4:  conv.u1
    IL_00c5:  stelem.i1
    IL_00c6:  dup
    IL_00c7:  ldc.i4.4
    IL_00c8:  ldloc.0
    IL_00c9:  ldc.i4.s   24
    IL_00cb:  shr.un
    IL_00cc:  ldc.i4     0xff
    IL_00d1:  conv.i8
    IL_00d2:  and
    IL_00d3:  conv.u1
    IL_00d4:  stelem.i1
    IL_00d5:  dup
    IL_00d6:  ldc.i4.5
    IL_00d7:  ldloc.0
    IL_00d8:  ldc.i4.s   16
    IL_00da:  shr.un
    IL_00db:  ldc.i4     0xff
    IL_00e0:  conv.i8
    IL_00e1:  and
    IL_00e2:  conv.u1
    IL_00e3:  stelem.i1
    IL_00e4:  dup
    IL_00e5:  ldc.i4.6
    IL_00e6:  ldloc.0
    IL_00e7:  ldc.i4.8
    IL_00e8:  shr.un
    IL_00e9:  ldc.i4     0xff
    IL_00ee:  conv.i8
    IL_00ef:  and
    IL_00f0:  conv.u1
    IL_00f1:  stelem.i1
    IL_00f2:  dup
    IL_00f3:  ldc.i4.7
    IL_00f4:  ldloc.0
    IL_00f5:  ldc.i4     0xff
    IL_00fa:  conv.i8
    IL_00fb:  and
    IL_00fc:  conv.u1
    IL_00fd:  stelem.i1
    IL_00fe:  ret
  } // end of method Arrays::LongToBytes

  .method public hidebysig static int64  BytesToLong(uint8[] 'array') cil managed
  {
    // Code size       130 (0x82)
    .maxstack  4
    .locals init (int64 V_0)
    IL_0000:  ldsfld     bool [mscorlib]System.BitConverter::IsLittleEndian
    IL_0005:  brtrue.s   IL_0024

    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.7
    IL_0009:  ldelem.u1
    IL_000a:  ldc.i4.s   24
    IL_000c:  shl
    IL_000d:  ldarg.0
    IL_000e:  ldc.i4.6
    IL_000f:  ldelem.u1
    IL_0010:  ldc.i4.s   16
    IL_0012:  shl
    IL_0013:  or
    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.5
    IL_0016:  ldelem.u1
    IL_0017:  ldc.i4.8
    IL_0018:  shl
    IL_0019:  or
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.4
    IL_001c:  ldelem.u1
    IL_001d:  or
    IL_001e:  conv.i8
    IL_001f:  ldc.i4.s   32
    IL_0021:  shl
    IL_0022:  br.s       IL_003f

    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.0
    IL_0026:  ldelem.u1
    IL_0027:  ldc.i4.s   24
    IL_0029:  shl
    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.1
    IL_002c:  ldelem.u1
    IL_002d:  ldc.i4.s   16
    IL_002f:  shl
    IL_0030:  or
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.2
    IL_0033:  ldelem.u1
    IL_0034:  ldc.i4.8
    IL_0035:  shl
    IL_0036:  or
    IL_0037:  ldarg.0
    IL_0038:  ldc.i4.3
    IL_0039:  ldelem.u1
    IL_003a:  or
    IL_003b:  conv.i8
    IL_003c:  ldc.i4.s   32
    IL_003e:  shl
    IL_003f:  ldsfld     bool [mscorlib]System.BitConverter::IsLittleEndian
    IL_0044:  brtrue.s   IL_0063

    IL_0046:  ldarg.0
    IL_0047:  ldc.i4.3
    IL_0048:  ldelem.u1
    IL_0049:  ldc.i4.s   24
    IL_004b:  shl
    IL_004c:  ldarg.0
    IL_004d:  ldc.i4.2
    IL_004e:  ldelem.u1
    IL_004f:  ldc.i4.s   16
    IL_0051:  shl
    IL_0052:  or
    IL_0053:  ldarg.0
    IL_0054:  ldc.i4.1
    IL_0055:  ldelem.u1
    IL_0056:  ldc.i4.8
    IL_0057:  shl
    IL_0058:  or
    IL_0059:  ldarg.0
    IL_005a:  ldc.i4.0
    IL_005b:  ldelem.u1
    IL_005c:  or
    IL_005d:  conv.i8
    IL_005e:  ldc.i4.m1
    IL_005f:  conv.u8
    IL_0060:  and
    IL_0061:  br.s       IL_007e

    IL_0063:  ldarg.0
    IL_0064:  ldc.i4.4
    IL_0065:  ldelem.u1
    IL_0066:  ldc.i4.s   24
    IL_0068:  shl
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4.5
    IL_006b:  ldelem.u1
    IL_006c:  ldc.i4.s   16
    IL_006e:  shl
    IL_006f:  or
    IL_0070:  ldarg.0
    IL_0071:  ldc.i4.6
    IL_0072:  ldelem.u1
    IL_0073:  ldc.i4.8
    IL_0074:  shl
    IL_0075:  or
    IL_0076:  ldarg.0
    IL_0077:  ldc.i4.7
    IL_0078:  ldelem.u1
    IL_0079:  or
    IL_007a:  conv.i8
    IL_007b:  ldc.i4.m1
    IL_007c:  conv.u8
    IL_007d:  and
    IL_007e:  stloc.0
    IL_007f:  ldloc.0
    IL_0080:  or
    IL_0081:  ret
  } // end of method Arrays::BytesToLong

  .method public hidebysig static uint8[] 
          LeftmostBits(uint8[] data,
                       int32 lengthBits) cil managed
  {
    // Code size       50 (0x32)
    .maxstack  7
    .locals init (int32 V_0,
             uint8[] V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.8
    IL_0002:  ldstr      "LeftmostBits() expects length in bits divisible by"
    + " 8, but was given {0}"
    IL_0007:  ldc.i4.1
    IL_0008:  newarr     [mscorlib]System.Object
    IL_000d:  dup
    IL_000e:  ldc.i4.0
    IL_000f:  ldarg.1
    IL_0010:  box        [mscorlib]System.Int32
    IL_0015:  stelem.ref
    IL_0016:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_001b:  ldarg.1
    IL_001c:  ldc.i4.8
    IL_001d:  div
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  newarr     [mscorlib]System.Byte
    IL_0025:  stloc.1
    IL_0026:  ldarg.0
    IL_0027:  ldc.i4.0
    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.0
    IL_002a:  ldloc.0
    IL_002b:  call       void [mscorlib]System.Buffer::BlockCopy(class [mscorlib]System.Array,
                                                                 int32,
                                                                 class [mscorlib]System.Array,
                                                                 int32,
                                                                 int32)
    IL_0030:  ldloc.1
    IL_0031:  ret
  } // end of method Arrays::LeftmostBits

  .method public hidebysig static uint8[] 
          RightmostBits(uint8[] data,
                        int32 lengthBits) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  7
    .locals init (int32 V_0,
             uint8[] V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.8
    IL_0002:  ldstr      "RightmostBits() expects length in bits divisible b"
    + "y 8, but was given {0}"
    IL_0007:  ldc.i4.1
    IL_0008:  newarr     [mscorlib]System.Object
    IL_000d:  dup
    IL_000e:  ldc.i4.0
    IL_000f:  ldarg.1
    IL_0010:  box        [mscorlib]System.Int32
    IL_0015:  stelem.ref
    IL_0016:  call       void Jose.Ensure::Divisible(int32,
                                                     int32,
                                                     string,
                                                     object[])
    IL_001b:  ldarg.1
    IL_001c:  ldc.i4.8
    IL_001d:  div
    IL_001e:  stloc.0
    IL_001f:  ldloc.0
    IL_0020:  newarr     [mscorlib]System.Byte
    IL_0025:  stloc.1
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldlen
    IL_0029:  conv.i4
    IL_002a:  ldloc.0
    IL_002b:  sub
    IL_002c:  ldloc.1
    IL_002d:  ldc.i4.0
    IL_002e:  ldloc.0
    IL_002f:  call       void [mscorlib]System.Buffer::BlockCopy(class [mscorlib]System.Array,
                                                                 int32,
                                                                 class [mscorlib]System.Array,
                                                                 int32,
                                                                 int32)
    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method Arrays::RightmostBits

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Arrays::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [mscorlib]System.Byte
    IL_0006:  stsfld     uint8[] Jose.Arrays::Empty
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [mscorlib]System.Byte
    IL_0011:  stsfld     uint8[] Jose.Arrays::Zero
    IL_0016:  ret
  } // end of method Arrays::.cctor

  .property class [mscorlib]System.Security.Cryptography.RandomNumberGenerator
          RNG()
  {
    .get class [mscorlib]System.Security.Cryptography.RandomNumberGenerator Jose.Arrays::get_RNG()
  } // end of property Arrays::RNG
} // end of class Jose.Arrays

.class public abstract auto ansi sealed beforefieldinit Jose.Base64Url
       extends [mscorlib]System.Object
{
  .method public hidebysig static string 
          Encode(uint8[] input) cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       string [mscorlib]System.Convert::ToBase64String(uint8[])
    IL_0006:  ldc.i4.1
    IL_0007:  newarr     [mscorlib]System.Char
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldc.i4.s   61
    IL_0010:  stelem.i2
    IL_0011:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_0016:  ldc.i4.0
    IL_0017:  ldelem.ref
    IL_0018:  ldc.i4.s   43
    IL_001a:  ldc.i4.s   45
    IL_001c:  callvirt   instance string [mscorlib]System.String::Replace(char,
                                                                          char)
    IL_0021:  ldc.i4.s   47
    IL_0023:  ldc.i4.s   95
    IL_0025:  callvirt   instance string [mscorlib]System.String::Replace(char,
                                                                          char)
    IL_002a:  ret
  } // end of method Base64Url::Encode

  .method public hidebysig static uint8[] 
          Decode(string input) cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    IL_0002:  ldloc.0
    IL_0003:  ldc.i4.s   45
    IL_0005:  ldc.i4.s   43
    IL_0007:  callvirt   instance string [mscorlib]System.String::Replace(char,
                                                                          char)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.s   95
    IL_0010:  ldc.i4.s   47
    IL_0012:  callvirt   instance string [mscorlib]System.String::Replace(char,
                                                                          char)
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_001e:  ldc.i4.4
    IL_001f:  rem
    IL_0020:  stloc.1
    IL_0021:  ldloc.1
    IL_0022:  switch     ( 
                          IL_0065,
                          IL_0055,
                          IL_0039,
                          IL_0047)
    IL_0037:  br.s       IL_0055

    IL_0039:  ldloc.0
    IL_003a:  ldstr      "=="
    IL_003f:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0044:  stloc.0
    IL_0045:  br.s       IL_0065

    IL_0047:  ldloc.0
    IL_0048:  ldstr      "="
    IL_004d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0052:  stloc.0
    IL_0053:  br.s       IL_0065

    IL_0055:  ldstr      "input"
    IL_005a:  ldstr      "Illegal base64url string!"
    IL_005f:  newobj     instance void [mscorlib]System.ArgumentOutOfRangeException::.ctor(string,
                                                                                           string)
    IL_0064:  throw

    IL_0065:  ldloc.0
    IL_0066:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
    IL_006b:  ret
  } // end of method Base64Url::Decode

} // end of class Jose.Base64Url

.class public auto ansi beforefieldinit Jose.Compact
       extends [mscorlib]System.Object
{
  .method public hidebysig static string 
          Serialize(uint8[][] parts) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       72 (0x48)
    .maxstack  3
    .locals init (class [mscorlib]System.Text.StringBuilder V_0,
             uint8[][] V_1,
             int32 V_2,
             uint8[] V_3)
    IL_0000:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  stloc.1
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.2
    IL_000a:  br.s       IL_002b

    IL_000c:  ldloc.1
    IL_000d:  ldloc.2
    IL_000e:  ldelem.ref
    IL_000f:  stloc.3
    IL_0010:  ldloc.0
    IL_0011:  ldloc.3
    IL_0012:  call       string Jose.Base64Url::Encode(uint8[])
    IL_0017:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_001c:  ldstr      "."
    IL_0021:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Append(string)
    IL_0026:  pop
    IL_0027:  ldloc.2
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldlen
    IL_002e:  conv.i4
    IL_002f:  blt.s      IL_000c

    IL_0031:  ldloc.0
    IL_0032:  ldloc.0
    IL_0033:  callvirt   instance int32 [mscorlib]System.Text.StringBuilder::get_Length()
    IL_0038:  ldc.i4.1
    IL_0039:  sub
    IL_003a:  ldc.i4.1
    IL_003b:  callvirt   instance class [mscorlib]System.Text.StringBuilder [mscorlib]System.Text.StringBuilder::Remove(int32,
                                                                                                                        int32)
    IL_0040:  pop
    IL_0041:  ldloc.0
    IL_0042:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0047:  ret
  } // end of method Compact::Serialize

  .method public hidebysig static uint8[][] 
          Parse(string token) cil managed
  {
    // Code size       54 (0x36)
    .maxstack  5
    .locals init (string[] V_0,
             uint8[][] V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [mscorlib]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   46
    IL_000b:  stelem.i2
    IL_000c:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  newarr     uint8[]
    IL_001a:  stloc.1
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.2
    IL_001d:  br.s       IL_002e

    IL_001f:  ldloc.1
    IL_0020:  ldloc.2
    IL_0021:  ldloc.0
    IL_0022:  ldloc.2
    IL_0023:  ldelem.ref
    IL_0024:  call       uint8[] Jose.Base64Url::Decode(string)
    IL_0029:  stelem.ref
    IL_002a:  ldloc.2
    IL_002b:  ldc.i4.1
    IL_002c:  add
    IL_002d:  stloc.2
    IL_002e:  ldloc.2
    IL_002f:  ldloc.0
    IL_0030:  ldlen
    IL_0031:  conv.i4
    IL_0032:  blt.s      IL_001f

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method Compact::Parse

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Compact::.ctor

} // end of class Jose.Compact

.class public auto ansi beforefieldinit Jose.Dictionaries
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass0_0`2'<K,V>
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [mscorlib]System.Collections.Generic.IDictionary`2<!K,!V> src
    .field public class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!K,!V>,bool> '<>9__0'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass0_0`2'::.ctor

    .method assembly hidebysig instance bool 
            '<Append>b__0'(valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!K,!V> pair) cil managed
    {
      // Code size       22 (0x16)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<!0,!1> class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!K,!V>::src
      IL_0006:  ldarga.s   pair
      IL_0008:  call       instance !0 valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!K,!V>::get_Key()
      IL_000d:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<!K,!V>::ContainsKey(!0)
      IL_0012:  ldc.i4.0
      IL_0013:  ceq
      IL_0015:  ret
    } // end of method '<>c__DisplayClass0_0`2'::'<Append>b__0'

  } // end of class '<>c__DisplayClass0_0`2'

  .method public hidebysig static void  Append<K,V>(class [mscorlib]System.Collections.Generic.IDictionary`2<!!K,!!V> src,
                                                    class [mscorlib]System.Collections.Generic.IDictionary`2<!!K,!!V> other) cil managed
  {
    // Code size       109 (0x6d)
    .maxstack  4
    .locals init (class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V> V_0,
             class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V>> V_1,
             class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V>,bool> V_2,
             valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V> V_3)
    IL_0000:  newobj     instance void class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class [mscorlib]System.Collections.Generic.IDictionary`2<!0,!1> class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::src
    IL_000d:  ldloc.0
    IL_000e:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<!0,!1> class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::src
    IL_0013:  brfalse.s  IL_006c

    IL_0015:  ldarg.1
    IL_0016:  brfalse.s  IL_006c

    IL_0018:  ldarg.1
    IL_0019:  ldloc.0
    IL_001a:  ldfld      class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1>,bool> class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::'<>9__0'
    IL_001f:  dup
    IL_0020:  brtrue.s   IL_0038

    IL_0022:  pop
    IL_0023:  ldloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldftn      instance bool class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::'<Append>b__0'(valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1>)
    IL_002b:  newobj     instance void class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V>,bool>::.ctor(object,
                                                                                                                                                         native int)
    IL_0030:  dup
    IL_0031:  stloc.2
    IL_0032:  stfld      class [mscorlib]System.Func`2<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!0,!1>,bool> class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::'<>9__0'
    IL_0037:  ldloc.2
    IL_0038:  call       class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> [System.Core]System.Linq.Enumerable::Where<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!0,!!1>>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                          class [mscorlib]System.Func`2<!!0,bool>)
    IL_003d:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V>>::GetEnumerator()
    IL_0042:  stloc.1
    .try
    {
      IL_0043:  br.s       IL_0058

      IL_0045:  ldloc.1
      IL_0046:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V>>::get_Current()
      IL_004b:  stloc.3
      IL_004c:  ldloc.0
      IL_004d:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<!0,!1> class Jose.Dictionaries/'<>c__DisplayClass0_0`2'<!!K,!!V>::src
      IL_0052:  ldloc.3
      IL_0053:  callvirt   instance void class [mscorlib]System.Collections.Generic.ICollection`1<valuetype [mscorlib]System.Collections.Generic.KeyValuePair`2<!!K,!!V>>::Add(!0)
      IL_0058:  ldloc.1
      IL_0059:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_005e:  brtrue.s   IL_0045

      IL_0060:  leave.s    IL_006c

    }  // end .try
    finally
    {
      IL_0062:  ldloc.1
      IL_0063:  brfalse.s  IL_006b

      IL_0065:  ldloc.1
      IL_0066:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_006b:  endfinally
    }  // end handler
    IL_006c:  ret
  } // end of method Dictionaries::Append

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Dictionaries::.ctor

} // end of class Jose.Dictionaries

.class public auto ansi beforefieldinit Jose.Ensure
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass10_0'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> dict
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass10_0'::.ctor

    .method assembly hidebysig instance bool 
            '<Contains>b__0'(string key) cil managed
    {
      // Code size       16 (0x10)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> Jose.Ensure/'<>c__DisplayClass10_0'::dict
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance bool class [mscorlib]System.Collections.Generic.IDictionary`2<string,object>::ContainsKey(!0)
      IL_000c:  ldc.i4.0
      IL_000d:  ceq
      IL_000f:  ret
    } // end of method '<>c__DisplayClass10_0'::'<Contains>b__0'

  } // end of class '<>c__DisplayClass10_0'

  .method public hidebysig static void  IsEmpty(uint8[] arr,
                                                string msg,
                                                object[] args) cil managed
  {
    .param [3]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldlen
    IL_0002:  brfalse.s  IL_000b

    IL_0004:  ldarg.1
    IL_0005:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000a:  throw

    IL_000b:  ret
  } // end of method Ensure::IsEmpty

  .method public hidebysig static !!T  Type<T>(object obj,
                                               string msg,
                                               object[] args) cil managed
  {
    .param [3]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  isinst     !!T
    IL_0006:  brtrue.s   IL_000f

    IL_0008:  ldarg.1
    IL_0009:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000e:  throw

    IL_000f:  ldarg.0
    IL_0010:  unbox.any  !!T
    IL_0015:  ret
  } // end of method Ensure::Type

  .method public hidebysig static void  IsNull(object key,
                                               string msg,
                                               object[] args) cil managed
  {
    .param [3]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_000a

    IL_0003:  ldarg.1
    IL_0004:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0009:  throw

    IL_000a:  ret
  } // end of method Ensure::IsNull

  .method public hidebysig static void  BitSize(uint8[] 'array',
                                                int64 expectedSize,
                                                string msg,
                                                object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldlen
    IL_0003:  conv.i4
    IL_0004:  conv.i8
    IL_0005:  ldc.i4.8
    IL_0006:  conv.i8
    IL_0007:  mul
    IL_0008:  beq.s      IL_0017

    IL_000a:  ldarg.2
    IL_000b:  ldarg.3
    IL_000c:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0011:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0016:  throw

    IL_0017:  ret
  } // end of method Ensure::BitSize

  .method public hidebysig static void  BitSize(int32 actualSize,
                                                int32 expectedSize,
                                                string msg) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  beq.s      IL_000b

    IL_0004:  ldarg.2
    IL_0005:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000a:  throw

    IL_000b:  ret
  } // end of method Ensure::BitSize

  .method public hidebysig static void  IsNotEmpty(string arg,
                                                   string msg,
                                                   object[] args) cil managed
  {
    .param [3]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [mscorlib]System.String::IsNullOrWhiteSpace(string)
    IL_0006:  brfalse.s  IL_000f

    IL_0008:  ldarg.1
    IL_0009:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_000e:  throw

    IL_000f:  ret
  } // end of method Ensure::IsNotEmpty

  .method public hidebysig static void  Divisible(int32 arg,
                                                  int32 divisor,
                                                  string msg,
                                                  object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  rem
    IL_0003:  brfalse.s  IL_0012

    IL_0005:  ldarg.2
    IL_0006:  ldarg.3
    IL_0007:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_000c:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0011:  throw

    IL_0012:  ret
  } // end of method Ensure::Divisible

  .method public hidebysig static void  MinValue(int64 arg,
                                                 int64 min,
                                                 string msg,
                                                 object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  bge.s      IL_0011

    IL_0004:  ldarg.2
    IL_0005:  ldarg.3
    IL_0006:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_000b:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0010:  throw

    IL_0011:  ret
  } // end of method Ensure::MinValue

  .method public hidebysig static void  MaxValue(int32 arg,
                                                 int64 max,
                                                 string msg,
                                                 object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  conv.i8
    IL_0002:  ldarg.1
    IL_0003:  ble.s      IL_0012

    IL_0005:  ldarg.2
    IL_0006:  ldarg.3
    IL_0007:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_000c:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0011:  throw

    IL_0012:  ret
  } // end of method Ensure::MaxValue

  .method public hidebysig static void  MinBitSize(uint8[] arr,
                                                   int64 minBitSize,
                                                   string msg,
                                                   object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  conv.i8
    IL_0004:  ldc.i4.8
    IL_0005:  conv.i8
    IL_0006:  mul
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  ldarg.3
    IL_000a:  call       void Jose.Ensure::MinValue(int64,
                                                    int64,
                                                    string,
                                                    object[])
    IL_000f:  ret
  } // end of method Ensure::MinBitSize

  .method public hidebysig static void  Contains(class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> dict,
                                                 string[] keys,
                                                 string msg,
                                                 object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (class Jose.Ensure/'<>c__DisplayClass10_0' V_0)
    IL_0000:  newobj     instance void Jose.Ensure/'<>c__DisplayClass10_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class [mscorlib]System.Collections.Generic.IDictionary`2<string,object> Jose.Ensure/'<>c__DisplayClass10_0'::dict
    IL_000d:  ldarg.1
    IL_000e:  ldloc.0
    IL_000f:  ldftn      instance bool Jose.Ensure/'<>c__DisplayClass10_0'::'<Contains>b__0'(string)
    IL_0015:  newobj     instance void class [mscorlib]System.Func`2<string,bool>::.ctor(object,
                                                                                         native int)
    IL_001a:  call       bool [System.Core]System.Linq.Enumerable::Any<string>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                               class [mscorlib]System.Func`2<!!0,bool>)
    IL_001f:  brfalse.s  IL_002e

    IL_0021:  ldarg.2
    IL_0022:  ldarg.3
    IL_0023:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0028:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_002d:  throw

    IL_002e:  ret
  } // end of method Ensure::Contains

  .method public hidebysig static void  SameSize(uint8[] left,
                                                 uint8[] right,
                                                 string msg,
                                                 object[] args) cil managed
  {
    .param [4]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldlen
    IL_0002:  conv.i4
    IL_0003:  ldarg.1
    IL_0004:  ldlen
    IL_0005:  conv.i4
    IL_0006:  beq.s      IL_0015

    IL_0008:  ldarg.2
    IL_0009:  ldarg.3
    IL_000a:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_000f:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0014:  throw

    IL_0015:  ret
  } // end of method Ensure::SameSize

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Ensure::.ctor

} // end of class Jose.Ensure

.class public abstract auto ansi sealed beforefieldinit Jose.native.BCrypt
       extends [mscorlib]System.Object
{
  .class sequential ansi sealed nested public beforefieldinit BCRYPT_PSS_PADDING_INFO
         extends [mscorlib]System.ValueType
  {
    .field public  marshal( lpwstr) string pszAlgId
    .field public int32 cbSalt
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(string pszAlgId,
                                 int32 cbSalt) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      string Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO::pszAlgId
      IL_0007:  ldarg.0
      IL_0008:  ldarg.2
      IL_0009:  stfld      int32 Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO::cbSalt
      IL_000e:  ret
    } // end of method BCRYPT_PSS_PADDING_INFO::.ctor

  } // end of class BCRYPT_PSS_PADDING_INFO

  .class sequential ansi sealed nested public beforefieldinit BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
         extends [mscorlib]System.ValueType
         implements [mscorlib]System.IDisposable
  {
    .field public int32 cbSize
    .field public int32 dwInfoVersion
    .field public native int pbNonce
    .field public int32 cbNonce
    .field public native int pbAuthData
    .field public int32 cbAuthData
    .field public native int pbTag
    .field public int32 cbTag
    .field public native int pbMacContext
    .field public int32 cbMacContext
    .field public int32 cbAAD
    .field public int64 cbData
    .field public int32 dwFlags
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(uint8[] iv,
                                 uint8[] aad,
                                 uint8[] tag) cil managed
    {
      // Code size       210 (0xd2)
      .maxstack  4
      IL_0000:  ldarg.0
      IL_0001:  initobj    Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
      IL_0007:  ldarg.0
      IL_0008:  ldsfld     int32 Jose.native.BCrypt::BCRYPT_INIT_AUTH_MODE_INFO_VERSION
      IL_000d:  stfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::dwInfoVersion
      IL_0012:  ldarg.0
      IL_0013:  ldtoken    Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
      IL_0018:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_001d:  call       int32 [mscorlib]System.Runtime.InteropServices.Marshal::SizeOf(class [mscorlib]System.Type)
      IL_0022:  stfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbSize
      IL_0027:  ldarg.1
      IL_0028:  brfalse.s  IL_0057

      IL_002a:  ldarg.0
      IL_002b:  ldarg.1
      IL_002c:  ldlen
      IL_002d:  conv.i4
      IL_002e:  stfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbNonce
      IL_0033:  ldarg.0
      IL_0034:  ldarg.0
      IL_0035:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbNonce
      IL_003a:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_003f:  stfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbNonce
      IL_0044:  ldarg.1
      IL_0045:  ldc.i4.0
      IL_0046:  ldarg.0
      IL_0047:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbNonce
      IL_004c:  ldarg.0
      IL_004d:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbNonce
      IL_0052:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                       int32,
                                                                                       native int,
                                                                                       int32)
      IL_0057:  ldarg.2
      IL_0058:  brfalse.s  IL_0087

      IL_005a:  ldarg.0
      IL_005b:  ldarg.2
      IL_005c:  ldlen
      IL_005d:  conv.i4
      IL_005e:  stfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbAuthData
      IL_0063:  ldarg.0
      IL_0064:  ldarg.0
      IL_0065:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbAuthData
      IL_006a:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_006f:  stfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbAuthData
      IL_0074:  ldarg.2
      IL_0075:  ldc.i4.0
      IL_0076:  ldarg.0
      IL_0077:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbAuthData
      IL_007c:  ldarg.0
      IL_007d:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbAuthData
      IL_0082:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                       int32,
                                                                                       native int,
                                                                                       int32)
      IL_0087:  ldarg.3
      IL_0088:  brfalse.s  IL_00d1

      IL_008a:  ldarg.0
      IL_008b:  ldarg.3
      IL_008c:  ldlen
      IL_008d:  conv.i4
      IL_008e:  stfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbTag
      IL_0093:  ldarg.0
      IL_0094:  ldarg.0
      IL_0095:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbTag
      IL_009a:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_009f:  stfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbTag
      IL_00a4:  ldarg.3
      IL_00a5:  ldc.i4.0
      IL_00a6:  ldarg.0
      IL_00a7:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbTag
      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbTag
      IL_00b2:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                       int32,
                                                                                       native int,
                                                                                       int32)
      IL_00b7:  ldarg.0
      IL_00b8:  ldarg.3
      IL_00b9:  ldlen
      IL_00ba:  conv.i4
      IL_00bb:  stfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbMacContext
      IL_00c0:  ldarg.0
      IL_00c1:  ldarg.0
      IL_00c2:  ldfld      int32 Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::cbMacContext
      IL_00c7:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_00cc:  stfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbMacContext
      IL_00d1:  ret
    } // end of method BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::.ctor

    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // Code size       117 (0x75)
      .maxstack  2
      IL_0000:  ldarg.0
      IL_0001:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbNonce
      IL_0006:  ldsfld     native int [mscorlib]System.IntPtr::Zero
      IL_000b:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                       native int)
      IL_0010:  brfalse.s  IL_001d

      IL_0012:  ldarg.0
      IL_0013:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbNonce
      IL_0018:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
      IL_001d:  ldarg.0
      IL_001e:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbTag
      IL_0023:  ldsfld     native int [mscorlib]System.IntPtr::Zero
      IL_0028:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                       native int)
      IL_002d:  brfalse.s  IL_003a

      IL_002f:  ldarg.0
      IL_0030:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbTag
      IL_0035:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
      IL_003a:  ldarg.0
      IL_003b:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbAuthData
      IL_0040:  ldsfld     native int [mscorlib]System.IntPtr::Zero
      IL_0045:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                       native int)
      IL_004a:  brfalse.s  IL_0057

      IL_004c:  ldarg.0
      IL_004d:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbAuthData
      IL_0052:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
      IL_0057:  ldarg.0
      IL_0058:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbMacContext
      IL_005d:  ldsfld     native int [mscorlib]System.IntPtr::Zero
      IL_0062:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                       native int)
      IL_0067:  brfalse.s  IL_0074

      IL_0069:  ldarg.0
      IL_006a:  ldfld      native int Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::pbMacContext
      IL_006f:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
      IL_0074:  ret
    } // end of method BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO::Dispose

  } // end of class BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO

  .class sequential ansi sealed nested public beforefieldinit BCRYPT_KEY_LENGTHS_STRUCT
         extends [mscorlib]System.ValueType
  {
    .field public int32 dwMinLength
    .field public int32 dwMaxLength
    .field public int32 dwIncrement
  } // end of class BCRYPT_KEY_LENGTHS_STRUCT

  .class sequential ansi sealed nested public beforefieldinit BCRYPT_OAEP_PADDING_INFO
         extends [mscorlib]System.ValueType
  {
    .field public  marshal( lpwstr) string pszAlgId
    .field public native int pbLabel
    .field public int32 cbLabel
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(string alg) cil managed
    {
      // Code size       26 (0x1a)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  stfld      string Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO::pszAlgId
      IL_0007:  ldarg.0
      IL_0008:  ldsfld     native int [mscorlib]System.IntPtr::Zero
      IL_000d:  stfld      native int Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO::pbLabel
      IL_0012:  ldarg.0
      IL_0013:  ldc.i4.0
      IL_0014:  stfld      int32 Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO::cbLabel
      IL_0019:  ret
    } // end of method BCRYPT_OAEP_PADDING_INFO::.ctor

  } // end of class BCRYPT_OAEP_PADDING_INFO

  .field public static literal uint32 ERROR_SUCCESS = uint32(0x00000000)
  .field public static literal uint32 BCRYPT_PAD_PSS = uint32(0x00000008)
  .field public static literal uint32 BCRYPT_PAD_OAEP = uint32(0x00000004)
  .field public static initonly uint8[] BCRYPT_KEY_DATA_BLOB_MAGIC
  .field public static initonly string BCRYPT_OBJECT_LENGTH
  .field public static initonly string BCRYPT_CHAIN_MODE_GCM
  .field public static initonly string BCRYPT_AUTH_TAG_LENGTH
  .field public static initonly string BCRYPT_CHAINING_MODE
  .field public static initonly string BCRYPT_KEY_DATA_BLOB
  .field public static initonly string BCRYPT_AES_ALGORITHM
  .field public static initonly string MS_PRIMITIVE_PROVIDER
  .field public static initonly int32 BCRYPT_AUTH_MODE_CHAIN_CALLS_FLAG
  .field public static initonly int32 BCRYPT_INIT_AUTH_MODE_INFO_VERSION
  .field public static initonly uint32 STATUS_AUTH_TAG_MISMATCH
  .method public hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptOpenAlgorithmProvider([out] native int& phAlgorithm,
                                              string  marshal( lpwstr) pszAlgId,
                                              string  marshal( lpwstr) pszImplementation,
                                              uint32 dwFlags) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptCloseAlgorithmProvider(native int hAlgorithm,
                                               uint32 'flags') cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptGetProperty(native int hObject,
                                    string  marshal( lpwstr) pszProperty,
                                    uint8[] pbOutput,
                                    int32 cbOutput,
                                    int32& pcbResult,
                                    uint32 'flags') cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("bcrypt.dll" as "BCryptSetProperty" winapi) 
          uint32  BCryptSetAlgorithmProperty(native int hObject,
                                             string  marshal( lpwstr) pszProperty,
                                             uint8[] pbInput,
                                             int32 cbInput,
                                             int32 dwFlags) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptImportKey(native int hAlgorithm,
                                  native int hImportKey,
                                  string  marshal( lpwstr) pszBlobType,
                                  [out] native int& phKey,
                                  native int pbKeyObject,
                                  int32 cbKeyObject,
                                  uint8[] pbInput,
                                  int32 cbInput,
                                  uint32 dwFlags) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptDestroyKey(native int hKey) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptEncrypt(native int hKey,
                                uint8[] pbInput,
                                int32 cbInput,
                                valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO& pPaddingInfo,
                                uint8[] pbIV,
                                int32 cbIV,
                                uint8[] pbOutput,
                                int32 cbOutput,
                                int32& pcbResult,
                                uint32 dwFlags) cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("bcrypt.dll" winapi) 
          uint32  BCryptDecrypt(native int hKey,
                                uint8[] pbInput,
                                int32 cbInput,
                                valuetype Jose.native.BCrypt/BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO& pPaddingInfo,
                                uint8[] pbIV,
                                int32 cbIV,
                                uint8[] pbOutput,
                                int32 cbOutput,
                                int32& pcbResult,
                                int32 dwFlags) cil managed preservesig
  {
  }
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  1
    IL_0000:  ldc.i4     0x4d42444b
    IL_0005:  call       uint8[] [mscorlib]System.BitConverter::GetBytes(int32)
    IL_000a:  stsfld     uint8[] Jose.native.BCrypt::BCRYPT_KEY_DATA_BLOB_MAGIC
    IL_000f:  ldstr      "ObjectLength"
    IL_0014:  stsfld     string Jose.native.BCrypt::BCRYPT_OBJECT_LENGTH
    IL_0019:  ldstr      "ChainingModeGCM"
    IL_001e:  stsfld     string Jose.native.BCrypt::BCRYPT_CHAIN_MODE_GCM
    IL_0023:  ldstr      "AuthTagLength"
    IL_0028:  stsfld     string Jose.native.BCrypt::BCRYPT_AUTH_TAG_LENGTH
    IL_002d:  ldstr      "ChainingMode"
    IL_0032:  stsfld     string Jose.native.BCrypt::BCRYPT_CHAINING_MODE
    IL_0037:  ldstr      "KeyDataBlob"
    IL_003c:  stsfld     string Jose.native.BCrypt::BCRYPT_KEY_DATA_BLOB
    IL_0041:  ldstr      "AES"
    IL_0046:  stsfld     string Jose.native.BCrypt::BCRYPT_AES_ALGORITHM
    IL_004b:  ldstr      "Microsoft Primitive Provider"
    IL_0050:  stsfld     string Jose.native.BCrypt::MS_PRIMITIVE_PROVIDER
    IL_0055:  ldc.i4.1
    IL_0056:  stsfld     int32 Jose.native.BCrypt::BCRYPT_AUTH_MODE_CHAIN_CALLS_FLAG
    IL_005b:  ldc.i4.1
    IL_005c:  stsfld     int32 Jose.native.BCrypt::BCRYPT_INIT_AUTH_MODE_INFO_VERSION
    IL_0061:  ldc.i4     0xc000a002
    IL_0066:  stsfld     uint32 Jose.native.BCrypt::STATUS_AUTH_TAG_MISMATCH
    IL_006b:  ret
  } // end of method BCrypt::.cctor

} // end of class Jose.native.BCrypt

.class public abstract auto ansi sealed beforefieldinit Jose.native.NCrypt
       extends [mscorlib]System.Object
{
  .class sequential autochar nested public beforefieldinit NCryptBufferDesc
         extends [mscorlib]System.Object
         implements [mscorlib]System.IDisposable
  {
    .class auto ansi serializable sealed nested private beforefieldinit '<>c'
           extends [mscorlib]System.Object
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .field public static initonly class Jose.native.NCrypt/NCryptBufferDesc/'<>c' '<>9'
      .field public static class [mscorlib]System.Func`2<class Jose.native.NCrypt/NCryptBuffer,int32> '<>9__3_0'
      .method private hidebysig specialname rtspecialname static 
              void  .cctor() cil managed
      {
        // Code size       11 (0xb)
        .maxstack  8
        IL_0000:  newobj     instance void Jose.native.NCrypt/NCryptBufferDesc/'<>c'::.ctor()
        IL_0005:  stsfld     class Jose.native.NCrypt/NCryptBufferDesc/'<>c' Jose.native.NCrypt/NCryptBufferDesc/'<>c'::'<>9'
        IL_000a:  ret
      } // end of method '<>c'::.cctor

      .method public hidebysig specialname rtspecialname 
              instance void  .ctor() cil managed
      {
        // Code size       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
        IL_0006:  ret
      } // end of method '<>c'::.ctor

      .method assembly hidebysig instance int32 
              '<.ctor>b__3_0'(class Jose.native.NCrypt/NCryptBuffer buf) cil managed
      {
        // Code size       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.1
        IL_0001:  call       int32 [mscorlib]System.Runtime.InteropServices.Marshal::SizeOf(object)
        IL_0006:  ret
      } // end of method '<>c'::'<.ctor>b__3_0'

    } // end of class '<>c'

    .field public uint32 ulVersion
    .field public uint32 cBuffers
    .field public native int pBuffers
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(class Jose.native.NCrypt/NCryptBuffer[] buffers) cil managed
    {
      .param [1]
      .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       121 (0x79)
      .maxstack  4
      .locals init (int32 V_0,
               class Jose.native.NCrypt/NCryptBuffer[] V_1,
               int32 V_2,
               class Jose.native.NCrypt/NCryptBuffer V_3)
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  ldlen
      IL_0009:  conv.i4
      IL_000a:  stfld      uint32 Jose.native.NCrypt/NCryptBufferDesc::cBuffers
      IL_000f:  ldarg.0
      IL_0010:  ldc.i4.0
      IL_0011:  stfld      uint32 Jose.native.NCrypt/NCryptBufferDesc::ulVersion
      IL_0016:  ldarg.0
      IL_0017:  ldarg.1
      IL_0018:  ldsfld     class [mscorlib]System.Func`2<class Jose.native.NCrypt/NCryptBuffer,int32> Jose.native.NCrypt/NCryptBufferDesc/'<>c'::'<>9__3_0'
      IL_001d:  dup
      IL_001e:  brtrue.s   IL_0037

      IL_0020:  pop
      IL_0021:  ldsfld     class Jose.native.NCrypt/NCryptBufferDesc/'<>c' Jose.native.NCrypt/NCryptBufferDesc/'<>c'::'<>9'
      IL_0026:  ldftn      instance int32 Jose.native.NCrypt/NCryptBufferDesc/'<>c'::'<.ctor>b__3_0'(class Jose.native.NCrypt/NCryptBuffer)
      IL_002c:  newobj     instance void class [mscorlib]System.Func`2<class Jose.native.NCrypt/NCryptBuffer,int32>::.ctor(object,
                                                                                                                           native int)
      IL_0031:  dup
      IL_0032:  stsfld     class [mscorlib]System.Func`2<class Jose.native.NCrypt/NCryptBuffer,int32> Jose.native.NCrypt/NCryptBufferDesc/'<>c'::'<>9__3_0'
      IL_0037:  call       int32 [System.Core]System.Linq.Enumerable::Sum<class Jose.native.NCrypt/NCryptBuffer>(class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                 class [mscorlib]System.Func`2<!!0,int32>)
      IL_003c:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_0041:  stfld      native int Jose.native.NCrypt/NCryptBufferDesc::pBuffers
      IL_0046:  ldc.i4.0
      IL_0047:  stloc.0
      IL_0048:  ldarg.1
      IL_0049:  stloc.1
      IL_004a:  ldc.i4.0
      IL_004b:  stloc.2
      IL_004c:  br.s       IL_0072

      IL_004e:  ldloc.1
      IL_004f:  ldloc.2
      IL_0050:  ldelem.ref
      IL_0051:  stloc.3
      IL_0052:  ldloc.3
      IL_0053:  ldarg.0
      IL_0054:  ldfld      native int Jose.native.NCrypt/NCryptBufferDesc::pBuffers
      IL_0059:  ldloc.0
      IL_005a:  call       native int [mscorlib]System.IntPtr::op_Addition(native int,
                                                                           int32)
      IL_005f:  ldc.i4.0
      IL_0060:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::StructureToPtr(object,
                                                                                                 native int,
                                                                                                 bool)
      IL_0065:  ldloc.0
      IL_0066:  ldloc.3
      IL_0067:  call       int32 [mscorlib]System.Runtime.InteropServices.Marshal::SizeOf(object)
      IL_006c:  add
      IL_006d:  stloc.0
      IL_006e:  ldloc.2
      IL_006f:  ldc.i4.1
      IL_0070:  add
      IL_0071:  stloc.2
      IL_0072:  ldloc.2
      IL_0073:  ldloc.1
      IL_0074:  ldlen
      IL_0075:  conv.i4
      IL_0076:  blt.s      IL_004e

      IL_0078:  ret
    } // end of method NCryptBufferDesc::.ctor

    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // Code size       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      native int Jose.native.NCrypt/NCryptBufferDesc::pBuffers
      IL_0006:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
      IL_000b:  ret
    } // end of method NCryptBufferDesc::Dispose

  } // end of class NCryptBufferDesc

  .class sequential autochar nested public beforefieldinit NCryptBuffer
         extends [mscorlib]System.Object
         implements [mscorlib]System.IDisposable
  {
    .field public uint32 cbBuffer
    .field public uint32 BufferType
    .field public native int pvBuffer
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(uint32 bufferType,
                                 string data) cil managed
    {
      // Code size       73 (0x49)
      .maxstack  4
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      uint32 Jose.native.NCrypt/NCryptBuffer::BufferType
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0014:  ldc.i4.2
      IL_0015:  mul
      IL_0016:  ldc.i4.2
      IL_0017:  add
      IL_0018:  stfld      uint32 Jose.native.NCrypt/NCryptBuffer::cbBuffer
      IL_001d:  ldarg.0
      IL_001e:  ldarg.2
      IL_001f:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0024:  ldc.i4.2
      IL_0025:  mul
      IL_0026:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_002b:  stfld      native int Jose.native.NCrypt/NCryptBuffer::pvBuffer
      IL_0030:  ldarg.2
      IL_0031:  callvirt   instance char[] [mscorlib]System.String::ToCharArray()
      IL_0036:  ldc.i4.0
      IL_0037:  ldarg.0
      IL_0038:  ldfld      native int Jose.native.NCrypt/NCryptBuffer::pvBuffer
      IL_003d:  ldarg.2
      IL_003e:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_0043:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::Copy(char[],
                                                                                       int32,
                                                                                       native int,
                                                                                       int32)
      IL_0048:  ret
    } // end of method NCryptBuffer::.ctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(uint32 bufferType,
                                 uint8[] data) cil managed
    {
      // Code size       53 (0x35)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      uint32 Jose.native.NCrypt/NCryptBuffer::BufferType
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  ldlen
      IL_0010:  conv.i4
      IL_0011:  stfld      uint32 Jose.native.NCrypt/NCryptBuffer::cbBuffer
      IL_0016:  ldarg.0
      IL_0017:  ldarg.2
      IL_0018:  ldlen
      IL_0019:  conv.i4
      IL_001a:  call       native int [mscorlib]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
      IL_001f:  stfld      native int Jose.native.NCrypt/NCryptBuffer::pvBuffer
      IL_0024:  ldarg.2
      IL_0025:  ldc.i4.0
      IL_0026:  ldarg.0
      IL_0027:  ldfld      native int Jose.native.NCrypt/NCryptBuffer::pvBuffer
      IL_002c:  ldarg.2
      IL_002d:  ldlen
      IL_002e:  conv.i4
      IL_002f:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                       int32,
                                                                                       native int,
                                                                                       int32)
      IL_0034:  ret
    } // end of method NCryptBuffer::.ctor

    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // Code size       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      native int Jose.native.NCrypt/NCryptBuffer::pvBuffer
      IL_0006:  call       void [mscorlib]System.Runtime.InteropServices.Marshal::FreeHGlobal(native int)
      IL_000b:  ret
    } // end of method NCryptBuffer::Dispose

  } // end of class NCryptBuffer

  .field public static literal uint32 NTE_BAD_SIGNATURE = uint32(0x80090006)
  .field public static literal uint32 KDF_ALGORITHMID = uint32(0x00000008)
  .field public static literal uint32 KDF_PARTYUINFO = uint32(0x00000009)
  .field public static literal uint32 KDF_PARTYVINFO = uint32(0x0000000A)
  .field public static literal uint32 KDF_SUPPPUBINFO = uint32(0x0000000B)
  .field public static literal uint32 KDF_SUPPPRIVINFO = uint32(0x0000000C)
  .method public hidebysig static pinvokeimpl("ncrypt.dll" autochar lasterr winapi) 
          uint32  NCryptSecretAgreement(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle hPrivKey,
                                        class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle hPublicKey,
                                        [out] class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle& phSecret,
                                        uint32 'flags') cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("ncrypt.dll" autochar lasterr winapi) 
          uint32  NCryptDeriveKey(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptSecretHandle hSharedSecret,
                                  string kdf,
                                  class Jose.native.NCrypt/NCryptBufferDesc parameterList,
                                  uint8[] derivedKey,
                                  uint32 derivedKeyByteSize,
                                  [out] uint32& result,
                                  uint32 'flags') cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("ncrypt.dll" winapi) 
          uint32  NCryptSignHash(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle hKey,
                                 valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO& pPaddingInfo,
                                 uint8[] pbHashValue,
                                 int32 cbHashValue,
                                 uint8[] pbSignature,
                                 int32 cbSignature,
                                 [out] uint32& pcbResult,
                                 uint32 dwFlags) cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("ncrypt.dll" winapi) 
          uint32  NCryptVerifySignature(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle hKey,
                                        valuetype Jose.native.BCrypt/BCRYPT_PSS_PADDING_INFO& pPaddingInfo,
                                        uint8[] pbHashValue,
                                        int32 cbHashValue,
                                        uint8[] pbSignature,
                                        int32 cbSignature,
                                        uint32 dwFlags) cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("ncrypt.dll" winapi) 
          uint32  NCryptDecrypt(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle hKey,
                                uint8[] pbInput,
                                int32 cbInput,
                                valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO& pvPadding,
                                uint8[] pbOutput,
                                uint32 cbOutput,
                                [out] uint32& pcbResult,
                                uint32 dwFlags) cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("ncrypt.dll" winapi) 
          uint32  NCryptEncrypt(class [System.Core]Microsoft.Win32.SafeHandles.SafeNCryptKeyHandle hKey,
                                uint8[] pbInput,
                                int32 cbInput,
                                valuetype Jose.native.BCrypt/BCRYPT_OAEP_PADDING_INFO& pvPadding,
                                uint8[] pbOutput,
                                uint32 cbOutput,
                                [out] uint32& pcbResult,
                                uint32 dwFlags) cil managed preservesig
  {
  }
} // end of class Jose.native.NCrypt

.class interface public abstract auto ansi Jose.jwe.IJweAlgorithm
{
  .method public hidebysig newslot abstract virtual 
          instance uint8[][]  Encrypt(uint8[] aad,
                                      uint8[] plainText,
                                      uint8[] cek) cil managed
  {
  } // end of method IJweAlgorithm::Encrypt

  .method public hidebysig newslot abstract virtual 
          instance uint8[]  Decrypt(uint8[] aad,
                                    uint8[] cek,
                                    uint8[] iv,
                                    uint8[] cipherText,
                                    uint8[] authTag) cil managed
  {
  } // end of method IJweAlgorithm::Decrypt

  .method public hidebysig newslot specialname abstract virtual 
          instance int32  get_KeySize() cil managed
  {
  } // end of method IJweAlgorithm::get_KeySize

  .property instance int32 KeySize()
  {
    .get instance int32 Jose.jwe.IJweAlgorithm::get_KeySize()
  } // end of property IJweAlgorithm::KeySize
} // end of class Jose.jwe.IJweAlgorithm

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field static assembly initonly int64 '5DBC1A420B61F594A834C83E3DDC229C8AB77FDC' at I_0000F49C
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_0000F49C = bytearray (
                 A6 A6 A6 A6 A6 A6 A6 A6) 
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file jose-jwt.res

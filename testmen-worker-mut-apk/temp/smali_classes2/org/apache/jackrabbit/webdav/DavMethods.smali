.class public final Lorg/apache/jackrabbit/webdav/DavMethods;
.super Ljava/lang/Object;
.source "DavMethods.java"


# static fields
.field public static final DAV_ACL:I = 0x1e

.field public static final DAV_BASELINE_CONTROL:I = 0x1c

.field public static final DAV_BIND:I = 0x21

.field public static final DAV_CHECKIN:I = 0x15

.field public static final DAV_CHECKOUT:I = 0x16

.field public static final DAV_COPY:I = 0xa

.field public static final DAV_DELETE:I = 0x5

.field public static final DAV_GET:I = 0x2

.field public static final DAV_HEAD:I = 0x3

.field public static final DAV_LABEL:I = 0x18

.field public static final DAV_LOCK:I = 0xc

.field public static final DAV_MERGE:I = 0x19

.field public static final DAV_MKACTIVITY:I = 0x1d

.field public static final DAV_MKCOL:I = 0x9

.field public static final DAV_MKWORKSPACE:I = 0x1b

.field public static final DAV_MOVE:I = 0xb

.field public static final DAV_OPTIONS:I = 0x1

.field public static final DAV_ORDERPATCH:I = 0xe

.field public static final DAV_POLL:I = 0x11

.field public static final DAV_POST:I = 0x4

.field public static final DAV_PROPFIND:I = 0x7

.field public static final DAV_PROPPATCH:I = 0x8

.field public static final DAV_PUT:I = 0x6

.field public static final DAV_REBIND:I = 0x1f

.field public static final DAV_REPORT:I = 0x13

.field public static final DAV_SEARCH:I = 0x12

.field public static final DAV_SUBSCRIBE:I = 0xf

.field public static final DAV_UNBIND:I = 0x20

.field public static final DAV_UNCHECKOUT:I = 0x17

.field public static final DAV_UNLOCK:I = 0xd

.field public static final DAV_UNSUBSCRIBE:I = 0x10

.field public static final DAV_UPDATE:I = 0x1a

.field public static final DAV_VERSION_CONTROL:I = 0x14

.field public static final METHOD_ACL:Ljava/lang/String; = "ACL"

.field public static final METHOD_BASELINE_CONTROL:Ljava/lang/String; = "BASELINE-CONTROL"

.field public static final METHOD_BIND:Ljava/lang/String; = "BIND"

.field public static final METHOD_CHECKIN:Ljava/lang/String; = "CHECKIN"

.field public static final METHOD_CHECKOUT:Ljava/lang/String; = "CHECKOUT"

.field public static final METHOD_COPY:Ljava/lang/String; = "COPY"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_LABEL:Ljava/lang/String; = "LABEL"

.field public static final METHOD_LOCK:Ljava/lang/String; = "LOCK"

.field public static final METHOD_MERGE:Ljava/lang/String; = "MERGE"

.field public static final METHOD_MKACTIVITY:Ljava/lang/String; = "MKACTIVITY"

.field public static final METHOD_MKCOL:Ljava/lang/String; = "MKCOL"

.field public static final METHOD_MKWORKSPACE:Ljava/lang/String; = "MKWORKSPACE"

.field public static final METHOD_MOVE:Ljava/lang/String; = "MOVE"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_ORDERPATCH:Ljava/lang/String; = "ORDERPATCH"

.field public static final METHOD_POLL:Ljava/lang/String; = "POLL"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PROPFIND:Ljava/lang/String; = "PROPFIND"

.field public static final METHOD_PROPPATCH:Ljava/lang/String; = "PROPPATCH"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_REBIND:Ljava/lang/String; = "REBIND"

.field public static final METHOD_REPORT:Ljava/lang/String; = "REPORT"

.field public static final METHOD_SEARCH:Ljava/lang/String; = "SEARCH"

.field public static final METHOD_SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final METHOD_UNBIND:Ljava/lang/String; = "UNBIND"

.field public static final METHOD_UNCHECKOUT:Ljava/lang/String; = "UNCHECKOUT"

.field public static final METHOD_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field public static final METHOD_UNSUBSCRIBE:Ljava/lang/String; = "UNSUBSCRIBE"

.field public static final METHOD_UPDATE:Ljava/lang/String; = "UPDATE"

.field public static final METHOD_VERSION_CONTROL:Ljava/lang/String; = "VERSION-CONTROL"

.field private static deltaVMethods:[I

.field private static labelMethods:[I

.field private static methodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x6

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavMethods;->methodMap:Ljava/util/Map;

    .line 309
    const-string v0, "OPTIONS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 310
    const-string v0, "GET"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 311
    const-string v0, "HEAD"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 312
    const-string v0, "POST"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 313
    const-string v0, "PUT"

    invoke-static {v0, v2}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 314
    const-string v0, "DELETE"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 315
    const-string v0, "PROPFIND"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 316
    const-string v0, "PROPPATCH"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 317
    const-string v0, "MKCOL"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 318
    const-string v0, "COPY"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 319
    const-string v0, "MOVE"

    invoke-static {v0, v3}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 320
    const-string v0, "LOCK"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 321
    const-string v0, "UNLOCK"

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 322
    const-string v0, "ORDERPATCH"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 323
    const-string v0, "SUBSCRIBE"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 324
    const-string v0, "UNSUBSCRIBE"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 325
    const-string v0, "POLL"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 326
    const-string v0, "SEARCH"

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 327
    const-string v0, "REPORT"

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 328
    const-string v0, "VERSION-CONTROL"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 329
    const-string v0, "CHECKIN"

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 330
    const-string v0, "CHECKOUT"

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 331
    const-string v0, "UNCHECKOUT"

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 332
    const-string v0, "LABEL"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 333
    const-string v0, "MERGE"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 334
    const-string v0, "UPDATE"

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 335
    const-string v0, "MKWORKSPACE"

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 336
    const-string v0, "BASELINE-CONTROL"

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 337
    const-string v0, "MKACTIVITY"

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 338
    const-string v0, "ACL"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 339
    const-string v0, "REBIND"

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 340
    const-string v0, "UNBIND"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 341
    const-string v0, "BIND"

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->addMethodCode(Ljava/lang/String;I)V

    .line 343
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavMethods;->labelMethods:[I

    .line 346
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavMethods;->deltaVMethods:[I

    .line 350
    return-void

    .line 343
    :array_0
    .array-data 4
        0x2
        0x3
        0x1
        0x7
        0x18
        0xa
    .end array-data

    .line 346
    :array_1
    .array-data 4
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMethodCode(Ljava/lang/String;I)V
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "code"    # I

    .prologue
    .line 302
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavMethods;->methodMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public static getMethodCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v1, Lorg/apache/jackrabbit/webdav/DavMethods;->methodMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 292
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCreateCollectionRequest(Lorg/apache/jackrabbit/webdav/DavServletRequest;)Z
    .locals 2
    .param p0, "request"    # Lorg/apache/jackrabbit/webdav/DavServletRequest;

    .prologue
    .line 374
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/DavServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->getMethodCode(Ljava/lang/String;)I

    move-result v0

    .line 375
    .local v0, "methodCode":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCreateRequest(Lorg/apache/jackrabbit/webdav/DavServletRequest;)Z
    .locals 2
    .param p0, "request"    # Lorg/apache/jackrabbit/webdav/DavServletRequest;

    .prologue
    .line 360
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/DavServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/DavMethods;->getMethodCode(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, "methodCode":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDeltaVMethod(Lorg/apache/jackrabbit/webdav/DavServletRequest;)Z
    .locals 6
    .param p0, "request"    # Lorg/apache/jackrabbit/webdav/DavServletRequest;

    .prologue
    .line 401
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/DavServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/DavMethods;->getMethodCode(Ljava/lang/String;)I

    move-result v1

    .line 402
    .local v1, "code":I
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavMethods;->deltaVMethods:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 403
    .local v2, "deltaVMethod":I
    if-ne v1, v2, :cond_0

    .line 404
    const/4 v5, 0x1

    .line 407
    .end local v2    # "deltaVMethod":I
    :goto_1
    return v5

    .line 402
    .restart local v2    # "deltaVMethod":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "deltaVMethod":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isMethodAffectedByLabel(Lorg/apache/jackrabbit/webdav/DavServletRequest;)Z
    .locals 6
    .param p0, "request"    # Lorg/apache/jackrabbit/webdav/DavServletRequest;

    .prologue
    .line 385
    invoke-interface {p0}, Lorg/apache/jackrabbit/webdav/DavServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/jackrabbit/webdav/DavMethods;->getMethodCode(Ljava/lang/String;)I

    move-result v1

    .line 386
    .local v1, "code":I
    sget-object v0, Lorg/apache/jackrabbit/webdav/DavMethods;->labelMethods:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 387
    .local v3, "labelMethod":I
    if-ne v1, v3, :cond_0

    .line 388
    const/4 v5, 0x1

    .line 391
    .end local v3    # "labelMethod":I
    :goto_1
    return v5

    .line 386
    .restart local v3    # "labelMethod":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v3    # "labelMethod":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

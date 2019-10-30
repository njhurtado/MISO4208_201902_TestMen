.class public Lcom/dropbox/core/v2/team/MobileClientSession;
.super Lcom/dropbox/core/v2/team/DeviceSession;
.source "MobileClientSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;,
        Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    }
.end annotation


# instance fields
.field protected final clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

.field protected final clientVersion:Ljava/lang/String;

.field protected final deviceName:Ljava/lang/String;

.field protected final lastCarrier:Ljava/lang/String;

.field protected final osVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V
    .locals 11
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "clientType"    # Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .prologue
    const/4 v4, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/MobileClientSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "clientType"    # Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .param p4, "ipAddress"    # Ljava/lang/String;
    .param p5, "country"    # Ljava/lang/String;
    .param p6, "created"    # Ljava/util/Date;
    .param p7, "updated"    # Ljava/util/Date;
    .param p8, "clientVersion"    # Ljava/lang/String;
    .param p9, "osVersion"    # Ljava/lang/String;
    .param p10, "lastCarrier"    # Ljava/lang/String;

    .prologue
    .line 54
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'deviceName\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    .line 59
    if-nez p3, :cond_1

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'clientType\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 63
    iput-object p8, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)Lcom/dropbox/core/v2/team/MobileClientSession$Builder;
    .locals 1
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "clientType"    # Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .prologue
    .line 187
    new-instance v0, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/team/MobileClientSession$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/MobileClientPlatform;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    if-ne p1, p0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/dropbox/core/v2/team/MobileClientSession;

    .line 334
    .local v0, "other":Lcom/dropbox/core/v2/team/MobileClientSession;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    .line 336
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/MobileClientPlatform;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    .line 337
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    .line 339
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_7
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    .line 340
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_b
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MobileClientSession;
    :cond_c
    move v1, v2

    .line 347
    goto/16 :goto_0
.end method

.method public getClientType()Lcom/dropbox/core/v2/team/MobileClientPlatform;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 315
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->deviceName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientType:Lcom/dropbox/core/v2/team/MobileClientPlatform;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->clientVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->osVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MobileClientSession;->lastCarrier:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 322
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSession;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 323
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

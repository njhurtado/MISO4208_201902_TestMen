.class public Lcom/dropbox/core/v2/team/DeviceSession;
.super Ljava/lang/Object;
.source "DeviceSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DeviceSession$Serializer;,
        Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    }
.end annotation


# instance fields
.field protected final country:Ljava/lang/String;

.field protected final created:Ljava/util/Date;

.field protected final ipAddress:Ljava/lang/String;

.field protected final sessionId:Ljava/lang/String;

.field protected final updated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/DeviceSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "created"    # Ljava/util/Date;
    .param p5, "updated"    # Ljava/util/Date;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sessionId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    .line 50
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    .line 51
    invoke-static {p5}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    if-ne p1, p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/dropbox/core/v2/team/DeviceSession;

    .line 230
    .local v0, "other":Lcom/dropbox/core/v2/team/DeviceSession;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    .line 233
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    .line 234
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/DeviceSession;
    :cond_7
    move v1, v2

    .line 238
    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->sessionId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->ipAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->country:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->created:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DeviceSession;->updated:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 219
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSession$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DeviceSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSession$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DeviceSession$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

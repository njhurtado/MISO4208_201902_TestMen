.class public Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
.super Lcom/dropbox/core/v2/team/DeviceSession$Builder;
.source "ActiveWebSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ActiveWebSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final browser:Ljava/lang/String;

.field protected final os:Ljava/lang/String;

.field protected final userAgent:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/lang/String;
    .param p4, "browser"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;-><init>(Ljava/lang/String;)V

    .line 190
    if-nez p2, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'userAgent\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->userAgent:Ljava/lang/String;

    .line 194
    if-nez p3, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'os\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->os:Ljava/lang/String;

    .line 198
    if-nez p4, :cond_2

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'browser\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->browser:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ActiveWebSession;
    .locals 9

    .prologue
    .line 261
    new-instance v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->sessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->os:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->browser:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->ipAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->country:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->created:Ljava/util/Date;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->updated:Ljava/util/Date;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/ActiveWebSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/team/DeviceSession;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->build()Lcom/dropbox/core/v2/team/ActiveWebSession;

    move-result-object v0

    return-object v0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 227
    return-object p0
.end method

.method public bridge synthetic withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0
    .param p1, "created"    # Ljava/util/Date;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 239
    return-object p0
.end method

.method public bridge synthetic withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 214
    return-object p0
.end method

.method public bridge synthetic withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withIpAddress(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;
    .locals 0
    .param p1, "updated"    # Ljava/util/Date;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/DeviceSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;

    .line 251
    return-object p0
.end method

.method public bridge synthetic withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/DeviceSession$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;->withUpdated(Ljava/util/Date;)Lcom/dropbox/core/v2/team/ActiveWebSession$Builder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;
.super Ljava/lang/Object;
.source "LinkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/LinkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

.field protected password:Lcom/dropbox/core/v2/sharing/LinkPassword;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 100
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 101
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 102
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/LinkSettings;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkSettings;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/LinkSettings;-><init>(Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/dropbox/core/v2/sharing/LinkExpiry;Lcom/dropbox/core/v2/sharing/LinkPassword;)V

    return-object v0
.end method

.method public withAudience(Lcom/dropbox/core/v2/sharing/LinkAudience;)Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;
    .locals 0
    .param p1, "audience"    # Lcom/dropbox/core/v2/sharing/LinkAudience;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 113
    return-object p0
.end method

.method public withExpiry(Lcom/dropbox/core/v2/sharing/LinkExpiry;)Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;
    .locals 0
    .param p1, "expiry"    # Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .line 125
    return-object p0
.end method

.method public withPassword(Lcom/dropbox/core/v2/sharing/LinkPassword;)Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;
    .locals 0
    .param p1, "password"    # Lcom/dropbox/core/v2/sharing/LinkPassword;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkSettings$Builder;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 137
    return-object p0
.end method

.class Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
.super Ljava/lang/Object;
.source "ModifySharedLinkSettingsArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;
    }
.end annotation


# instance fields
.field protected final removeExpiration:Z

.field protected final settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .param p3, "removeExpiration"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'settings\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .line 46
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->removeExpiration:Z

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    .line 112
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .line 113
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->removeExpiration:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->removeExpiration:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    :cond_5
    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public getRemoveExpiration()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->removeExpiration:Z

    return v0
.end method

.method public getSettings()Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 96
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->removeExpiration:Z

    .line 99
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 96
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 101
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

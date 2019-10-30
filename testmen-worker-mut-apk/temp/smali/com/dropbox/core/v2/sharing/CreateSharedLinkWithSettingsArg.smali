.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
.super Ljava/lang/Object;
.source "CreateSharedLinkWithSettingsArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;
    }
.end annotation


# instance fields
.field protected final path:Ljava/lang/String;

.field protected final settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    .line 98
    .local v0, "other":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .line 99
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    :cond_4
    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

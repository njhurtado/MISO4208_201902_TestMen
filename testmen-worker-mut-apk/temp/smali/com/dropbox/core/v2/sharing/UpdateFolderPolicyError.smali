.class public final Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;,
        Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;
    }
.end annotation


# static fields
.field public static final DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

.field public static final TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    .line 107
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;-><init>(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 241
    if-ne p1, p0, :cond_0

    .line 267
    :goto_0
    :pswitch_0
    return v2

    .line 244
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 245
    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    .line 246
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 247
    goto :goto_0

    .line 249
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UpdateFolderPolicyError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 263
    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    :cond_4
    move v2, v1

    .line 267
    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-eq v0, v1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 232
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisallowedSharedLinkPolicy()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotOnTeam()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamPolicyDisallowsMemberPolicy()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/dropbox/core/v2/sharing/ShareFolderError;
.super Ljava/lang/Object;
.source "ShareFolderError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;,
        Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    }
.end annotation


# static fields
.field public static final DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError;

.field public static final TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field private final badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .param p2, "badPathValue"    # Lcom/dropbox/core/v2/sharing/SharePathError;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 105
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    return-object v0
.end method

.method public static badPath(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharePathError;

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderError;-><init>(Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharePathError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 238
    if-ne p1, p0, :cond_0

    .line 264
    :goto_0
    :pswitch_0
    return v2

    .line 241
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 243
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ShareFolderError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 260
    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharePathError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ShareFolderError;
    :cond_4
    move v2, v1

    .line 264
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBadPathValue()Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.BAD_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 228
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->badPathValue:Lcom/dropbox/core/v2/sharing/SharePathError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 232
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 233
    return v0
.end method

.method public isBadPath()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

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
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailUnverified()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

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
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

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
    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

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
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderError;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
.super Ljava/lang/Object;
.source "SharedFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;,
        Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field public static final NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

.field private final noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;
    .param p2, "noExplicitAccessValue"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    .line 89
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 204
    if-ne p1, p0, :cond_0

    .line 226
    :goto_0
    :pswitch_0
    return v2

    .line 207
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 208
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 209
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharedFolderMemberError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 222
    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    :cond_4
    move v2, v1

    .line 226
    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 195
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 199
    .local v0, "hash":I
    return v0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoExplicitAccess()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotAMember()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

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
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

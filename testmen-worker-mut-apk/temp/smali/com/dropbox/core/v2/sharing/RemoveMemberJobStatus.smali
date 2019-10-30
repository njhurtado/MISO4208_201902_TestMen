.class public final Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
.super Ljava/lang/Object;
.source "RemoveMemberJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;,
        Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

.field private final completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

.field private final failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .param p3, "failedValue"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    .line 65
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 66
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 208
    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    .line 209
    .local v0, "other":Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 212
    sget-object v3, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveMemberJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 214
    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 193
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 198
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 199
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

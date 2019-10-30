.class public final Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
.super Ljava/lang/Object;
.source "FileMemberActionIndividualResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;,
        Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

.field private final memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

.field private final successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    .param p2, "successValue"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p3, "memberErrorValue"    # Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    .line 60
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 61
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    return-object v0
.end method

.method public static success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/AccessLevel;

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 203
    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 204
    .local v0, "other":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v3, v4, :cond_0

    .line 207
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionIndividualResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 189
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 194
    .local v0, "hash":I
    return v0
.end method

.method public isMemberError()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

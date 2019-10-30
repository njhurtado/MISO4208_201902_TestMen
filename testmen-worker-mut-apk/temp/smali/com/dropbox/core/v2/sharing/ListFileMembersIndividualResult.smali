.class public final Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
.super Ljava/lang/Object;
.source "ListFileMembersIndividualResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;,
        Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private final resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;
    .param p2, "resultValue"    # Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .param p3, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    .line 80
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    .line 81
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method

.method public static result(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->RESULT:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .line 227
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-ne v3, v4, :cond_0

    .line 230
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFileMembersIndividualResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 236
    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getResultValue()Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->RESULT:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RESULT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

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
    .line 207
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResult()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->RESULT:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

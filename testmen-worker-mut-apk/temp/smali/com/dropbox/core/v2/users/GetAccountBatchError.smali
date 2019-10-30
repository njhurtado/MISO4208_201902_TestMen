.class public final Lcom/dropbox/core/v2/users/GetAccountBatchError;
.super Ljava/lang/Object;
.source "GetAccountBatchError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;,
        Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

.field private final noAccountValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;
    .param p2, "noAccountValue"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    .line 76
    iput-object p2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/users/GetAccountBatchError;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/users/GetAccountBatchError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    return-object v0
.end method

.method public static noAccount(Ljava/lang/String;)Lcom/dropbox/core/v2/users/GetAccountBatchError;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x28

    .line 124
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/GetAccountBatchError;-><init>(Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 180
    check-cast v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    .line 181
    .local v0, "other":Lcom/dropbox/core/v2/users/GetAccountBatchError;
    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-ne v3, v4, :cond_0

    .line 184
    sget-object v3, Lcom/dropbox/core/v2/users/GetAccountBatchError$1;->$SwitchMap$com$dropbox$core$v2$users$GetAccountBatchError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 188
    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNoAccountValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-eq v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NO_ACCOUNT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 167
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->noAccountValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 171
    .local v0, "hash":I
    return v0
.end method

.method public isNoAccount()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->NO_ACCOUNT:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

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
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/users/GetAccountBatchError;->_tag:Lcom/dropbox/core/v2/users/GetAccountBatchError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

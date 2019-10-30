.class public final Lcom/dropbox/core/v2/team/TeamFolderActivateError;
.super Ljava/lang/Object;
.source "TeamFolderActivateError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;,
        Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/TeamFolderActivateError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

.field private final statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .param p3, "statusErrorValue"    # Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    .line 68
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .line 69
    iput-object p3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderActivateError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderActivateError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    return-object v0
.end method

.method public static statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

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
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;-><init>(Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 208
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    .line 210
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    if-ne v3, v4, :cond_0

    .line 213
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderActivateError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderActivateError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 215
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 219
    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    if-eq v0, v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    return-object v0
.end method

.method public getStatusErrorValue()Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.STATUS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessErrorValue:Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusErrorValue:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 199
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 200
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

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
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatusError()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->_tag:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

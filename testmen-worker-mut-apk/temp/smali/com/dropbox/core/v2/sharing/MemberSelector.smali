.class public final Lcom/dropbox/core/v2/sharing/MemberSelector;
.super Ljava/lang/Object;
.source "MemberSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;,
        Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

.field private final dropboxIdValue:Ljava/lang/String;

.field private final emailValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    .param p2, "dropboxIdValue"    # Ljava/lang/String;
    .param p3, "emailValue"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 86
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/MemberSelector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/MemberSelector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public static dropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 244
    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 245
    .local v0, "other":Lcom/dropbox/core/v2/sharing/MemberSelector;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v3, v4, :cond_0

    .line 248
    sget-object v3, Lcom/dropbox/core/v2/sharing/MemberSelector$1;->$SwitchMap$com$dropbox$core$v2$sharing$MemberSelector$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 254
    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDropboxIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 230
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->dropboxIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->emailValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "hash":I
    return v0
.end method

.method public isDropboxId()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmail()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

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
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->_tag:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

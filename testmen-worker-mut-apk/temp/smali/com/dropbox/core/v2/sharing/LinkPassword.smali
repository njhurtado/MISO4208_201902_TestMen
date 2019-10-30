.class public final Lcom/dropbox/core/v2/sharing/LinkPassword;
.super Ljava/lang/Object;
.source "LinkPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;,
        Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

.field public static final REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

.field private final setPasswordValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;
    .param p2, "setPasswordValue"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    .line 81
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/LinkPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/LinkPassword;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    return-object v0
.end method

.method public static setPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 188
    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 189
    .local v0, "other":Lcom/dropbox/core/v2/sharing/LinkPassword;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v3, v4, :cond_0

    .line 192
    sget-object v3, Lcom/dropbox/core/v2/sharing/LinkPassword$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkPassword$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 194
    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 198
    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSetPasswordValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SET_PASSWORD, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPasswordValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 179
    .local v0, "hash":I
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemovePassword()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSetPassword()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->_tag:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/dropbox/core/v2/sharing/InviteeInfo;
.super Ljava/lang/Object;
.source "InviteeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;,
        Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

.field private final emailValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/InviteeInfo;-><init>(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;
    .param p2, "emailValue"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    .line 79
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/InviteeInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/InviteeInfo;-><init>(Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 184
    .local v0, "other":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    if-ne v3, v4, :cond_0

    .line 187
    sget-object v3, Lcom/dropbox/core/v2/sharing/InviteeInfo$1;->$SwitchMap$com$dropbox$core$v2$sharing$InviteeInfo$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 191
    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 170
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->emailValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 174
    .local v0, "hash":I
    return v0
.end method

.method public isEmail()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

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
    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeInfo;->_tag:Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

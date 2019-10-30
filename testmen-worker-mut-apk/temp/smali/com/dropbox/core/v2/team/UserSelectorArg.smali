.class public final Lcom/dropbox/core/v2/team/UserSelectorArg;
.super Ljava/lang/Object;
.source "UserSelectorArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;,
        Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

.field private final emailValue:Ljava/lang/String;

.field private final externalIdValue:Ljava/lang/String;

.field private final teamMemberIdValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;
    .param p2, "teamMemberIdValue"    # Ljava/lang/String;
    .param p3, "externalIdValue"    # Ljava/lang/String;
    .param p4, "emailValue"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 62
    iput-object p2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static externalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static teamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 251
    check-cast v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 252
    .local v0, "other":Lcom/dropbox/core/v2/team/UserSelectorArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v3, v4, :cond_0

    .line 255
    sget-object v3, Lcom/dropbox/core/v2/team/UserSelectorArg$1;->$SwitchMap$com$dropbox$core$v2$team$UserSelectorArg$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v0, v1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EXTERNAL_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_MEMBER_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 236
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "hash":I
    return v0
.end method

.method public isEmail()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalId()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamMemberId()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
.super Ljava/lang/Object;
.source "MemberAddArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberAddArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final memberEmail:Ljava/lang/String;

.field protected memberExternalId:Ljava/lang/String;

.field protected final memberGivenName:Ljava/lang/String;

.field protected memberPersistentId:Ljava/lang/String;

.field protected final memberSurname:Ljava/lang/String;

.field protected role:Lcom/dropbox/core/v2/team/AdminTier;

.field protected sendWelcomeEmail:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "memberEmail"    # Ljava/lang/String;
    .param p2, "memberGivenName"    # Ljava/lang/String;
    .param p3, "memberSurname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberEmail\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberEmail:Ljava/lang/String;

    .line 245
    if-nez p2, :cond_3

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberGivenName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberGivenName\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_5
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_6
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    .line 258
    if-nez p3, :cond_7

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'memberSurname\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_8

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberSurname\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_9
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_a
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    .line 271
    iput-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    .line 272
    iput-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    .line 273
    iput-boolean v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    .line 274
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 275
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MemberAddArg;
    .locals 8

    .prologue
    .line 367
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/MemberAddArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V

    return-object v0
.end method

.method public withMemberExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2
    .param p1, "memberExternalId"    # Ljava/lang/String;

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public withMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 0
    .param p1, "memberPersistentId"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public withRole(Lcom/dropbox/core/v2/team/AdminTier;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 1
    .param p1, "role"    # Lcom/dropbox/core/v2/team/AdminTier;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 357
    :goto_0
    return-object p0

    .line 355
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    goto :goto_0
.end method

.method public withSendWelcomeEmail(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 1
    .param p1, "sendWelcomeEmail"    # Ljava/lang/Boolean;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    .line 333
    :goto_0
    return-object p0

    .line 331
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    goto :goto_0
.end method

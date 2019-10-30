.class public Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
.super Ljava/lang/Object;
.source "MembersSetProfileArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSetProfileArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected newEmail:Ljava/lang/String;

.field protected newExternalId:Ljava/lang/String;

.field protected newGivenName:Ljava/lang/String;

.field protected newPersistentId:Ljava/lang/String;

.field protected newSurname:Ljava/lang/String;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 2
    .param p1, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 211
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newEmail:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newExternalId:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newGivenName:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newSurname:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newPersistentId:Ljava/lang/String;

    .line 216
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    .locals 7

    .prologue
    .line 340
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newExternalId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newGivenName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newSurname:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newPersistentId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withNewEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2
    .param p1, "newEmail"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newEmail:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public withNewExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2
    .param p1, "newExternalId"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newExternalId:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public withNewGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2
    .param p1, "newGivenName"    # Ljava/lang/String;

    .prologue
    .line 277
    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newGivenName\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newGivenName:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public withNewPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 0
    .param p1, "newPersistentId"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newPersistentId:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public withNewSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2
    .param p1, "newSurname"    # Ljava/lang/String;

    .prologue
    .line 305
    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newSurname\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    const-string v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'newSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newSurname:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.class Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;
.super Ljava/lang/Object;
.source "AddFileMemberArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;,
        Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    }
.end annotation


# instance fields
.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final addMessageAsComment:Z

.field protected final customMessage:Ljava/lang/String;

.field protected final file:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;"
        }
    .end annotation
.end field

.field protected final quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberSelector;>;"
    const/4 v4, 0x0

    .line 106
    const/4 v3, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/AccessLevel;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/AccessLevel;Z)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p3, "customMessage"    # Ljava/lang/String;
    .param p4, "quiet"    # Z
    .param p5, "accessLevel"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p6, "addMessageAsComment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberSelector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'file\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'file\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    const-string v1, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'file\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    .line 70
    if-nez p2, :cond_3

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 74
    .local v0, "x":Lcom/dropbox/core/v2/sharing/MemberSelector;
    if-nez v0, :cond_4

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/MemberSelector;
    :cond_5
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    .line 79
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    .line 80
    iput-boolean p4, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->quiet:Z

    .line 81
    if-nez p5, :cond_6

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'accessLevel\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_6
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 85
    iput-boolean p6, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->addMessageAsComment:Z

    .line 86
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberSelector;>;"
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    if-ne p1, p0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 342
    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    .line 343
    .local v0, "other":Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    .line 344
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    .line 345
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->quiet:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->quiet:Z

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 347
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->addMessageAsComment:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->addMessageAsComment:Z

    if-eq v3, v4, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;
    :cond_7
    move v1, v2

    .line 352
    goto :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getAddMessageAsComment()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->addMessageAsComment:Z

    return v0
.end method

.method public getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->quiet:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 324
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->file:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->members:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->customMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->quiet:Z

    .line 328
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->addMessageAsComment:Z

    .line 330
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 324
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 332
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dropbox/core/v2/files/RelocationArg$Builder;
.super Ljava/lang/Object;
.source "RelocationArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected allowSharedFolder:Z

.field protected autorename:Z

.field protected final fromPath:Ljava/lang/String;

.field protected final toPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'fromPath\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    const-string v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'fromPath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->fromPath:Ljava/lang/String;

    .line 152
    if-nez p2, :cond_2

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'toPath\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    const-string v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'toPath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->toPath:Ljava/lang/String;

    .line 159
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    .line 160
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    .line 161
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/RelocationArg;
    .locals 5

    .prologue
    .line 219
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->fromPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->toPath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1
    .param p1, "allowSharedFolder"    # Ljava/lang/Boolean;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    .line 187
    :goto_0
    return-object p0

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    goto :goto_0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1
    .param p1, "autorename"    # Ljava/lang/Boolean;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    .line 209
    :goto_0
    return-object p0

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    goto :goto_0
.end method

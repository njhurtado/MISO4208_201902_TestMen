.class public abstract Lcom/dropbox/core/util/Dumpable;
.super Ljava/lang/Object;
.source "Dumpable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
.end method

.method protected getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/Dumpable;->toString(Ljava/lang/StringBuilder;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final toString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 20
    new-instance v0, Lcom/dropbox/core/util/DumpWriter$Plain;

    invoke-direct {v0, p1}, Lcom/dropbox/core/util/DumpWriter$Plain;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p0}, Lcom/dropbox/core/util/DumpWriter$Plain;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 21
    return-void
.end method

.method public final toStringMultiline()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/dropbox/core/util/Dumpable;->toStringMultiline(Ljava/lang/StringBuilder;IZ)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final toStringMultiline(Ljava/lang/StringBuilder;IZ)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "currentIndent"    # I
    .param p3, "nl"    # Z

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/util/DumpWriter$Multiline;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/dropbox/core/util/DumpWriter$Multiline;-><init>(Ljava/lang/StringBuilder;IIZ)V

    invoke-virtual {v0, p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 58
    return-void
.end method

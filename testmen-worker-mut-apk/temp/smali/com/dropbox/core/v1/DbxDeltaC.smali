.class public Lcom/dropbox/core/v1/DbxDeltaC;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxDeltaC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxDeltaC$Entry;,
        Lcom/dropbox/core/v1/DbxDeltaC$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/util/Dumpable;"
    }
.end annotation


# instance fields
.field public final cursor:Ljava/lang/String;

.field public final entries:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final hasMore:Z

.field public final reset:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Object;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "reset"    # Z
    .param p3, "cursor"    # Ljava/lang/String;
    .param p4, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTC;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/dropbox/core/v1/DbxDeltaC;, "Lcom/dropbox/core/v1/DbxDeltaC<TC;>;"
    .local p2, "entries":Ljava/lang/Object;, "TC;"
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 73
    iput-boolean p1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->reset:Z

    .line 74
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxDeltaC;->entries:Ljava/lang/Object;

    .line 75
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxDeltaC;->cursor:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/dropbox/core/v1/DbxDeltaC;->hasMore:Z

    .line 77
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2
    .param p1, "out"    # Lcom/dropbox/core/util/DumpWriter;

    .prologue
    .line 81
    .local p0, "this":Lcom/dropbox/core/v1/DbxDeltaC;, "Lcom/dropbox/core/v1/DbxDeltaC<TC;>;"
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->reset:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Z)Lcom/dropbox/core/util/DumpWriter;

    .line 82
    const-string v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 83
    const-string v0, "entries"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxDeltaC;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Z)Lcom/dropbox/core/util/DumpWriter;

    .line 85
    return-void
.end method

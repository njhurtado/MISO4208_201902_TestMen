.class public final Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;
.super Lcom/dropbox/core/DbxStreamWriter;
.source "DbxStreamWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxStreamWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamCopier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxStreamWriter",
        "<",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "source"    # Ljava/io/InputStream;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dropbox/core/DbxStreamWriter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;->source:Ljava/io/InputStream;

    .line 37
    return-void
.end method


# virtual methods
.method public write(Lcom/dropbox/core/NoThrowOutputStream;)V
    .locals 1
    .param p1, "out"    # Lcom/dropbox/core/NoThrowOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;->source:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 42
    return-void
.end method

.class public Lorg/gnucash/android/export/csv/CsvWriter;
.super Ljava/io/BufferedWriter;
.source "CsvWriter.java"


# instance fields
.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    const-string v0, ","

    iput-object v0, p0, Lorg/gnucash/android/export/csv/CsvWriter;->separator:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    const-string v0, ","

    iput-object v0, p0, Lorg/gnucash/android/export/csv/CsvWriter;->separator:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/gnucash/android/export/csv/CsvWriter;->separator:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/gnucash/android/export/csv/CsvWriter;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    .end local p1    # "token":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/gnucash/android/export/csv/CsvWriter;->write(Ljava/lang/String;II)V

    .line 47
    return-void
.end method

.method public writeEndToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lorg/gnucash/android/export/csv/CsvWriter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/export/csv/CsvWriter;->write(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/export/csv/CsvWriter;->newLine()V

    .line 92
    return-void
.end method

.method public writeToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/export/csv/CsvWriter;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/export/csv/CsvWriter;->write(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lorg/gnucash/android/export/csv/CsvWriter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/export/csv/CsvWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/export/csv/CsvWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

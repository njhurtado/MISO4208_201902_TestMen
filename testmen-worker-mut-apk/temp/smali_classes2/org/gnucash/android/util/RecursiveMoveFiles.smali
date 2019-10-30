.class public Lorg/gnucash/android/util/RecursiveMoveFiles;
.super Ljava/lang/Object;
.source "RecursiveMoveFiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mDestination:Ljava/io/File;

.field mSource:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/gnucash/android/util/RecursiveMoveFiles;->mSource:Ljava/io/File;

    .line 43
    iput-object p2, p0, Lorg/gnucash/android/util/RecursiveMoveFiles;->mDestination:Ljava/io/File;

    .line 44
    return-void
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 56
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 58
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 59
    .local v8, "bytesCopied":J
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v8, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 61
    :goto_0
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 63
    :cond_0
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .end local v8    # "bytesCopied":J
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 63
    :cond_2
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    throw v0
.end method

.method private recursiveMove(Ljava/io/File;Ljava/io/File;)I
    .locals 9
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "copyCount":I
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v2, v6, v4

    .line 80
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, p2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v3, "target":Ljava/io/File;
    invoke-direct {p0, v2, v3}, Lorg/gnucash/android/util/RecursiveMoveFiles;->recursiveMove(Ljava/io/File;Ljava/io/File;)I

    move-result v8

    add-int/2addr v0, v8

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "target":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 92
    :cond_1
    :goto_1
    const-string v4, "RecursiveMoveFiles"

    const-string v6, "Moved %d files from %s to %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v0

    .line 86
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/util/RecursiveMoveFiles;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "MigrationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error moving file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/gnucash/android/util/RecursiveMoveFiles;->mSource:Ljava/io/File;

    iget-object v1, p0, Lorg/gnucash/android/util/RecursiveMoveFiles;->mDestination:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/gnucash/android/util/RecursiveMoveFiles;->recursiveMove(Ljava/io/File;Ljava/io/File;)I

    .line 99
    return-void
.end method

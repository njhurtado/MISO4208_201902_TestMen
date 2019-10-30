.class public final Lorg/gnucash/android/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static moveFile(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "src"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "outputStream"    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 75
    .local v0, "buffer":[B
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 76
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 77
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 75
    .end local v2    # "read":I
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 81
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw v3

    .line 79
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "read":I
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 81
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 83
    const-string v3, "FileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting temp export file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 85
    return-void

    .line 79
    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    .end local v2    # "read":I
    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v3

    goto :goto_1
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v7, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "dstFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 53
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 55
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    :cond_0
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 61
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 62
    return-void

    .line 57
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    :cond_1
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    throw v2
.end method

.method public static zipFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .param p1, "zipFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 26
    .local v5, "outputStream":Ljava/io/OutputStream;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .local v6, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 28
    .local v0, "buffer":[B
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 29
    .local v3, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 34
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-lez v4, :cond_0

    .line 35
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 40
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "length":I
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 41
    return-void
.end method

.class public Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;
.super Ljava/security/SecureRandomSpi;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinuxPrngSecureRandomSpi"
.end annotation


# static fields
.field private static final URANDOM_FILE:Ljava/io/File;

.field private static final sLock:Ljava/lang/Object;

.field private static sUrandomIn:Ljava/io/DataInputStream;

.field private static sUrandomOut:Ljava/io/OutputStream;

.field private static final serialVersionUID:J


# instance fields
.field private mSeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->URANDOM_FILE:Ljava/io/File;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method

.method private getUrandomInputStream()Ljava/io/DataInputStream;
    .locals 5

    .prologue
    .line 182
    sget-object v2, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 183
    :try_start_0
    sget-object v1, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 189
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_0
    :try_start_2
    sget-object v1, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sUrandomIn:Ljava/io/DataInputStream;

    monitor-exit v2

    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getUrandomOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v1, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sUrandomOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sUrandomOut:Ljava/io/OutputStream;

    .line 206
    :cond_0
    sget-object v0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sUrandomOut:Ljava/io/OutputStream;

    monitor-exit v1

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 175
    new-array v0, p1, [B

    .line 176
    .local v0, "seed":[B
    invoke-virtual {p0, v0}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->engineNextBytes([B)V

    .line 177
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 153
    iget-boolean v2, p0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->mSeeded:Z

    if-nez v2, :cond_0

    .line 155
    invoke-static {}, Lcom/dropbox/core/android/FixedSecureRandom;->access$000()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->engineSetSeed([B)V

    .line 160
    :cond_0
    :try_start_0
    sget-object v3, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    invoke-direct {p0}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->getUrandomInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    .line 162
    .local v1, "in":Ljava/io/DataInputStream;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 165
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    return-void

    .line 162
    .end local v1    # "in":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method protected engineSetSeed([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x1

    .line 136
    :try_start_0
    sget-object v3, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    invoke-direct {p0}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->getUrandomOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 138
    .local v1, "out":Ljava/io/OutputStream;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    iput-boolean v5, p0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->mSeeded:Z

    .line 149
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 138
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-class v2, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mix seed into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    iput-boolean v5, p0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->mSeeded:Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iput-boolean v5, p0, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;->mSeeded:Z

    throw v2
.end method

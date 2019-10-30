.class public Lcom/owncloud/android/lib/common/utils/Log_OC;
.super Ljava/lang/Object;
.source "Log_OC.java"


# static fields
.field private static final LOG_FOLDER_NAME:Ljava/lang/String; = "log"

.field private static final MAX_FILE_SIZE:J = 0xf4240L

.field private static final SIMPLE_DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss"

.field private static final TAG:Ljava/lang/String;

.field private static isEnabled:Z

.field private static isMaxFileSizeReached:Z

.field private static mBuf:Ljava/io/BufferedWriter;

.field private static mFolder:Ljava/io/File;

.field private static mLogFile:Ljava/io/File;

.field private static mLogFileNames:[Ljava/lang/String;

.field private static mNextcloudDataFolderLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const-class v0, Lcom/owncloud/android/lib/common/utils/Log_OC;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "currentLog.txt"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "olderLog.txt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFileNames:[Ljava/lang/String;

    .line 30
    sput-boolean v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->isMaxFileSizeReached:Z

    .line 31
    sput-boolean v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->isEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized appendLog(Ljava/lang/String;)V
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v4, Lcom/owncloud/android/lib/common/utils/Log_OC;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->isEnabled:Z

    if-eqz v3, :cond_2

    .line 172
    sget-boolean v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->isMaxFileSizeReached:Z

    if-eqz v3, :cond_1

    .line 175
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFileNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "olderFile":Ljava/io/File;
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 181
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFileNames:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    .line 182
    const/4 v3, 0x0

    sput-boolean v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->isMaxFileSizeReached:Z

    .line 185
    .end local v1    # "olderFile":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 188
    .local v2, "timeStamp":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    sget-object v6, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    .line 189
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 190
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 191
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 192
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 193
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :try_start_2
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :goto_0
    :try_start_3
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 206
    const/4 v3, 0x1

    sput-boolean v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->isMaxFileSizeReached:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .end local v2    # "timeStamp":Ljava/lang/String;
    :cond_2
    monitor-exit v4

    return-void

    .line 199
    .restart local v2    # "timeStamp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v5, "Cleaning after logging failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 194
    .restart local v2    # "timeStamp":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v5, "Writing to logfile failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 198
    :try_start_6
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    .line 200
    :try_start_7
    sget-object v3, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v5, "Cleaning after logging failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 198
    :try_start_8
    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 201
    :goto_1
    :try_start_9
    throw v3

    .line 199
    :catch_3
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v6, "Cleaning after logging failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1
.end method

.method private static appendPhoneInfo()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Product : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version-Codename : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version-Release : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static deleteHistoryLogging()V
    .locals 6

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "folderLogs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "myFiles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 146
    new-instance v2, Ljava/io/File;

    aget-object v4, v3, v1

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v2, "myFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    .end local v2    # "myFile":Ljava/io/File;
    .end local v3    # "myFiles":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static getLogFileNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFileNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLogPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/owncloud/android/lib/common/utils/Log_OC;->mNextcloudDataFolderLog:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static declared-synchronized startLogging(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v3, Lcom/owncloud/android/lib/common/utils/Log_OC;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "log"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mNextcloudDataFolderLog:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/owncloud/android/lib/common/utils/Log_OC;->mNextcloudDataFolderLog:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    .line 82
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFileNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "isFolderCreated":Z
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 88
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log folder created at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mNextcloudDataFolderLog:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    :try_start_1
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    sput-boolean v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->isEnabled:Z

    .line 96
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    .line 98
    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->isEnabled:Z

    if-eqz v2, :cond_0

    .line 99
    invoke-static {}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendPhoneInfo()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :cond_0
    :try_start_2
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 107
    :try_start_3
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :cond_1
    :goto_1
    monitor-exit v3

    return-void

    .line 90
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v4, "Initialization finishing failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "isFolderCreated":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 102
    .restart local v1    # "isFolderCreated":Z
    :catch_1
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v4, "Log initialization failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    :try_start_6
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    .line 107
    :try_start_7
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 108
    :catch_2
    move-exception v0

    .line 109
    :try_start_8
    sget-object v2, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v4, "Initialization finishing failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    sget-object v4, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_3

    .line 107
    :try_start_9
    sget-object v4, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 110
    :cond_3
    :goto_2
    :try_start_a
    throw v2

    .line 108
    :catch_3
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v5, "Initialization finishing failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized stopLogging()V
    .locals 4

    .prologue
    .line 117
    const-class v2, Lcom/owncloud/android/lib/common/utils/Log_OC;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 119
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->isEnabled:Z

    .line 121
    const/4 v1, 0x0

    sput-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->mLogFile:Ljava/io/File;

    .line 122
    const/4 v1, 0x0

    sput-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->mFolder:Ljava/io/File;

    .line 123
    const/4 v1, 0x0

    sput-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->mBuf:Ljava/io/BufferedWriter;

    .line 124
    const/4 v1, 0x0

    sput-boolean v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->isMaxFileSizeReached:Z

    .line 125
    const/4 v1, 0x0

    sput-boolean v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->isEnabled:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit v2

    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v3, "Closing log file failed: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/owncloud/android/lib/common/utils/Log_OC;->TAG:Ljava/lang/String;

    const-string v3, "Stopping logging failed: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/owncloud/android/lib/common/utils/Log_OC;->appendLog(Ljava/lang/String;)V

    .line 73
    return-void
.end method

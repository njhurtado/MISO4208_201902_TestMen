.class public Lorg/gnucash/android/export/ExportParams;
.super Ljava/lang/Object;
.source "ExportParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/export/ExportParams$ExportTarget;
    }
.end annotation


# instance fields
.field private mCsvSeparator:C

.field private mDeleteTransactionsAfterExport:Z

.field private mExportFormat:Lorg/gnucash/android/export/ExportFormat;

.field private mExportLocation:Ljava/lang/String;

.field private mExportStartTime:Ljava/sql/Timestamp;

.field private mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;


# direct methods
.method public constructor <init>(Lorg/gnucash/android/export/ExportFormat;)V
    .locals 1
    .param p1, "format"    # Lorg/gnucash/android/export/ExportFormat;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->QIF:Lorg/gnucash/android/export/ExportFormat;

    iput-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 62
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromEpochZero()Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportStartTime:Ljava/sql/Timestamp;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/export/ExportParams;->mDeleteTransactionsAfterExport:Z

    .line 73
    sget-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SHARING:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    iput-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 84
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/gnucash/android/export/ExportParams;->mCsvSeparator:C

    .line 91
    invoke-virtual {p0, p1}, Lorg/gnucash/android/export/ExportParams;->setExportFormat(Lorg/gnucash/android/export/ExportFormat;)V

    .line 92
    return-void
.end method

.method public static parseCsv(Ljava/lang/String;)Lorg/gnucash/android/export/ExportParams;
    .locals 4
    .param p0, "csvParams"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "tokens":[Ljava/lang/String;
    new-instance v0, Lorg/gnucash/android/export/ExportParams;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/gnucash/android/export/ExportFormat;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportFormat;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/gnucash/android/export/ExportParams;-><init>(Lorg/gnucash/android/export/ExportFormat;)V

    .line 222
    .local v0, "params":Lorg/gnucash/android/export/ExportParams;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/export/ExportParams;->setExportTarget(Lorg/gnucash/android/export/ExportParams$ExportTarget;)V

    .line 223
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromUtcString(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/export/ExportParams;->setExportStartTime(Ljava/sql/Timestamp;)V

    .line 224
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/export/ExportParams;->setDeleteTransactionsAfterExport(Z)V

    .line 225
    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 226
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/gnucash/android/export/ExportParams;->setExportLocation(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCsvSeparator()C
    .locals 1

    .prologue
    .line 182
    iget-char v0, p0, Lorg/gnucash/android/export/ExportParams;->mCsvSeparator:C

    return v0
.end method

.method public getExportFormat()Lorg/gnucash/android/export/ExportFormat;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    return-object v0
.end method

.method public getExportLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getExportStartTime()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportStartTime:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getExportTarget()Lorg/gnucash/android/export/ExportParams$ExportTarget;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    return-object v0
.end method

.method public setCsvSeparator(C)V
    .locals 0
    .param p1, "separator"    # C

    .prologue
    .line 190
    iput-char p1, p0, Lorg/gnucash/android/export/ExportParams;->mCsvSeparator:C

    .line 191
    return-void
.end method

.method public setDeleteTransactionsAfterExport(Z)V
    .locals 0
    .param p1, "deleteTransactions"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lorg/gnucash/android/export/ExportParams;->mDeleteTransactionsAfterExport:Z

    .line 141
    return-void
.end method

.method public setExportFormat(Lorg/gnucash/android/export/ExportFormat;)V
    .locals 0
    .param p1, "exportFormat"    # Lorg/gnucash/android/export/ExportFormat;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/gnucash/android/export/ExportParams;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 108
    return-void
.end method

.method public setExportLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "exportLocation"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/gnucash/android/export/ExportParams;->mExportLocation:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setExportStartTime(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "exportStartTime"    # Ljava/sql/Timestamp;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/gnucash/android/export/ExportParams;->mExportStartTime:Ljava/sql/Timestamp;

    .line 125
    return-void
.end method

.method public setExportTarget(Lorg/gnucash/android/export/ExportParams$ExportTarget;)V
    .locals 0
    .param p1, "mExportTarget"    # Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/gnucash/android/export/ExportParams;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 157
    return-void
.end method

.method public shouldDeleteTransactionsAfterExport()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/gnucash/android/export/ExportParams;->mDeleteTransactionsAfterExport:Z

    return v0
.end method

.method public toCsv()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    const-string v0, ";"

    .line 207
    .local v0, "separator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/gnucash/android/export/ExportParams;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v2}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/export/ExportParams;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 208
    invoke-virtual {v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/export/ExportParams;->mExportStartTime:Ljava/sql/Timestamp;

    .line 209
    invoke-static {v2}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/gnucash/android/export/ExportParams;->mDeleteTransactionsAfterExport:Z

    .line 210
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/gnucash/android/export/ExportParams;->mExportLocation:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/gnucash/android/export/ExportParams;->mExportLocation:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    return-object v1

    .line 210
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Export all transactions created since "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/export/ExportParams;->mExportStartTime:Ljava/sql/Timestamp;

    invoke-static {v1}, Lorg/gnucash/android/util/TimestampHelper;->getUtcStringFromTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UTC as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/export/ExportParams;->mExportFormat:Lorg/gnucash/android/export/ExportFormat;

    .line 196
    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/gnucash/android/export/ExportParams;->mExportTarget:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/gnucash/android/export/ExportParams;->mExportLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/gnucash/android/export/ExportParams;->mExportLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    return-object v0

    .line 196
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

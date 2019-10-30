.class synthetic Lorg/gnucash/android/export/ExportAsyncTask$2;
.super Ljava/lang/Object;
.source "ExportAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/export/ExportAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$gnucash$android$export$ExportFormat:[I

.field static final synthetic $SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 242
    invoke-static {}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->values()[Lorg/gnucash/android/export/ExportParams$ExportTarget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    :try_start_0
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SHARING:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->DROPBOX:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->GOOGLE_DRIVE:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->OWNCLOUD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SD_CARD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportParams$ExportTarget:[I

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportParams$ExportTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 222
    :goto_5
    invoke-static {}, Lorg/gnucash/android/export/ExportFormat;->values()[Lorg/gnucash/android/export/ExportFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    :try_start_6
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->QIF:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->OFX:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->CSVA:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->CSVT:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lorg/gnucash/android/export/ExportAsyncTask$2;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v1}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    .line 242
    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

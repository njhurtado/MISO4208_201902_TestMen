.class public final enum Lorg/gnucash/android/export/ExportFormat;
.super Ljava/lang/Enum;
.source "ExportFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/export/ExportFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/export/ExportFormat;

.field public static final enum CSVA:Lorg/gnucash/android/export/ExportFormat;

.field public static final enum CSVT:Lorg/gnucash/android/export/ExportFormat;

.field public static final enum OFX:Lorg/gnucash/android/export/ExportFormat;

.field public static final enum QIF:Lorg/gnucash/android/export/ExportFormat;

.field public static final enum XML:Lorg/gnucash/android/export/ExportFormat;


# instance fields
.field private mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lorg/gnucash/android/export/ExportFormat;

    const-string v1, "QIF"

    const-string v2, "Quicken Interchange Format"

    invoke-direct {v0, v1, v3, v2}, Lorg/gnucash/android/export/ExportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportFormat;->QIF:Lorg/gnucash/android/export/ExportFormat;

    .line 24
    new-instance v0, Lorg/gnucash/android/export/ExportFormat;

    const-string v1, "OFX"

    const-string v2, "Open Financial eXchange"

    invoke-direct {v0, v1, v4, v2}, Lorg/gnucash/android/export/ExportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportFormat;->OFX:Lorg/gnucash/android/export/ExportFormat;

    .line 25
    new-instance v0, Lorg/gnucash/android/export/ExportFormat;

    const-string v1, "XML"

    const-string v2, "GnuCash XML"

    invoke-direct {v0, v1, v5, v2}, Lorg/gnucash/android/export/ExportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    .line 26
    new-instance v0, Lorg/gnucash/android/export/ExportFormat;

    const-string v1, "CSVA"

    const-string v2, "GnuCash accounts CSV"

    invoke-direct {v0, v1, v6, v2}, Lorg/gnucash/android/export/ExportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportFormat;->CSVA:Lorg/gnucash/android/export/ExportFormat;

    .line 27
    new-instance v0, Lorg/gnucash/android/export/ExportFormat;

    const-string v1, "CSVT"

    const-string v2, "GnuCash transactions CSV"

    invoke-direct {v0, v1, v7, v2}, Lorg/gnucash/android/export/ExportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportFormat;->CSVT:Lorg/gnucash/android/export/ExportFormat;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/gnucash/android/export/ExportFormat;

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->QIF:Lorg/gnucash/android/export/ExportFormat;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->OFX:Lorg/gnucash/android/export/ExportFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->XML:Lorg/gnucash/android/export/ExportFormat;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->CSVA:Lorg/gnucash/android/export/ExportFormat;

    aput-object v1, v0, v6

    sget-object v1, Lorg/gnucash/android/export/ExportFormat;->CSVT:Lorg/gnucash/android/export/ExportFormat;

    aput-object v1, v0, v7

    sput-object v0, Lorg/gnucash/android/export/ExportFormat;->$VALUES:[Lorg/gnucash/android/export/ExportFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/gnucash/android/export/ExportFormat;->mDescription:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/gnucash/android/export/ExportFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/export/ExportFormat;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/export/ExportFormat;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/gnucash/android/export/ExportFormat;->$VALUES:[Lorg/gnucash/android/export/ExportFormat;

    invoke-virtual {v0}, [Lorg/gnucash/android/export/ExportFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/export/ExportFormat;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lorg/gnucash/android/export/ExportFormat$1;->$SwitchMap$org$gnucash$android$export$ExportFormat:[I

    invoke-virtual {p0}, Lorg/gnucash/android/export/ExportFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    const-string v0, ".txt"

    :goto_0
    return-object v0

    .line 45
    :pswitch_0
    const-string v0, ".qif"

    goto :goto_0

    .line 47
    :pswitch_1
    const-string v0, ".ofx"

    goto :goto_0

    .line 49
    :pswitch_2
    const-string v0, ".gnca"

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v0, ".csv"

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/gnucash/android/export/ExportFormat;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lorg/gnucash/android/export/ExportParams$ExportTarget;
.super Ljava/lang/Enum;
.source "ExportParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/export/ExportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExportTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/export/ExportParams$ExportTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field public static final enum DROPBOX:Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field public static final enum GOOGLE_DRIVE:Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field public static final enum OWNCLOUD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field public static final enum SD_CARD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field public static final enum SHARING:Lorg/gnucash/android/export/ExportParams$ExportTarget;

.field public static final enum URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;


# instance fields
.field private mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    const-string v1, "SD_CARD"

    const-string v2, "SD Card"

    invoke-direct {v0, v1, v4, v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SD_CARD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    new-instance v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    const-string v1, "SHARING"

    const-string v2, "External Service"

    invoke-direct {v0, v1, v5, v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SHARING:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 41
    new-instance v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    const-string v1, "DROPBOX"

    const-string v2, "Dropbox"

    invoke-direct {v0, v1, v6, v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->DROPBOX:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    new-instance v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    const-string v1, "GOOGLE_DRIVE"

    const-string v2, "Google Drive"

    invoke-direct {v0, v1, v7, v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->GOOGLE_DRIVE:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    new-instance v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    const-string v1, "OWNCLOUD"

    const-string v2, "ownCloud"

    invoke-direct {v0, v1, v8, v2}, Lorg/gnucash/android/export/ExportParams$ExportTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->OWNCLOUD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 42
    new-instance v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    const-string v1, "URI"

    const/4 v2, 0x5

    const-string v3, "Sync Service"

    invoke-direct {v0, v1, v2, v3}, Lorg/gnucash/android/export/ExportParams$ExportTarget;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/gnucash/android/export/ExportParams$ExportTarget;

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SD_CARD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    aput-object v1, v0, v4

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->SHARING:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    aput-object v1, v0, v5

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->DROPBOX:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    aput-object v1, v0, v6

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->GOOGLE_DRIVE:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    aput-object v1, v0, v7

    sget-object v1, Lorg/gnucash/android/export/ExportParams$ExportTarget;->OWNCLOUD:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/gnucash/android/export/ExportParams$ExportTarget;->URI:Lorg/gnucash/android/export/ExportParams$ExportTarget;

    aput-object v2, v0, v1

    sput-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->$VALUES:[Lorg/gnucash/android/export/ExportParams$ExportTarget;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->mDescription:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/export/ExportParams$ExportTarget;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/export/ExportParams$ExportTarget;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->$VALUES:[Lorg/gnucash/android/export/ExportParams$ExportTarget;

    invoke-virtual {v0}, [Lorg/gnucash/android/export/ExportParams$ExportTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/export/ExportParams$ExportTarget;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/gnucash/android/export/ExportParams$ExportTarget;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/files/ThumbnailError$Tag;
.super Ljava/lang/Enum;
.source "ThumbnailError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ThumbnailError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/ThumbnailError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

.field public static final enum CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

.field public static final enum PATH:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

.field public static final enum UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

.field public static final enum UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    const-string v1, "PATH"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    const-string v1, "UNSUPPORTED_EXTENSION"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    const-string v1, "UNSUPPORTED_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    const-string v1, "CONVERSION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->PATH:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailError$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/ThumbnailError$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
.super Ljava/lang/Enum;
.source "ListUsersCursorError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersCursorError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

.field public static final enum CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

.field public static final enum DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    const-string v1, "INSUFFICIENT_PERMISSIONS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    const-string v1, "DOC_NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    const-string v1, "CURSOR_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->$VALUES:[Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->$VALUES:[Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    return-object v0
.end method

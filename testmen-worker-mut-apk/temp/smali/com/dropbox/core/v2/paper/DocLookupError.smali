.class public final enum Lcom/dropbox/core/v2/paper/DocLookupError;
.super Ljava/lang/Enum;
.source "DocLookupError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/DocLookupError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/paper/DocLookupError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/DocLookupError;

.field public static final enum DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/DocLookupError;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/DocLookupError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/DocLookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v1, "INSUFFICIENT_PERMISSIONS"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/DocLookupError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/DocLookupError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/DocLookupError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/DocLookupError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/DocLookupError;->OTHER:Lcom/dropbox/core/v2/paper/DocLookupError;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    const-string v1, "DOC_NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/DocLookupError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/DocLookupError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/DocLookupError;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/paper/DocLookupError;

    sget-object v1, Lcom/dropbox/core/v2/paper/DocLookupError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/DocLookupError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/DocLookupError;->OTHER:Lcom/dropbox/core/v2/paper/DocLookupError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/DocLookupError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/DocLookupError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/paper/DocLookupError;->$VALUES:[Lcom/dropbox/core/v2/paper/DocLookupError;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/DocLookupError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/DocLookupError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/DocLookupError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/paper/DocLookupError;->$VALUES:[Lcom/dropbox/core/v2/paper/DocLookupError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/DocLookupError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/DocLookupError;

    return-object v0
.end method

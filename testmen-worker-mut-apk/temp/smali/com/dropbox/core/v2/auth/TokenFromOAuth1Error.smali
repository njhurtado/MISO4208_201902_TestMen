.class public final enum Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;
.super Ljava/lang/Enum;
.source "TokenFromOAuth1Error.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

.field public static final enum APP_ID_MISMATCH:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

.field public static final enum INVALID_OAUTH1_TOKEN_INFO:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

.field public static final enum OTHER:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    const-string v1, "INVALID_OAUTH1_TOKEN_INFO"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->INVALID_OAUTH1_TOKEN_INFO:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    const-string v1, "APP_ID_MISMATCH"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->APP_ID_MISMATCH:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->OTHER:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    sget-object v1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->INVALID_OAUTH1_TOKEN_INFO:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->APP_ID_MISMATCH:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->OTHER:Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->$VALUES:[Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->$VALUES:[Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/auth/TokenFromOAuth1Error;

    return-object v0
.end method

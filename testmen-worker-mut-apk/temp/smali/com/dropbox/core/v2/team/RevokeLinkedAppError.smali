.class public final enum Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
.super Ljava/lang/Enum;
.source "RevokeLinkedAppError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/RevokeLinkedAppError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

.field public static final enum APP_NOT_FOUND:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

.field public static final enum MEMBER_NOT_FOUND:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    const-string v1, "APP_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->APP_NOT_FOUND:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    const-string v1, "MEMBER_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->MEMBER_NOT_FOUND:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->OTHER:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->APP_NOT_FOUND:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->MEMBER_NOT_FOUND:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->OTHER:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->$VALUES:[Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->$VALUES:[Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    return-object v0
.end method

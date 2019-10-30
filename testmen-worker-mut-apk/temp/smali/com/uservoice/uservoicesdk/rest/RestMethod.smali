.class public final enum Lcom/uservoice/uservoicesdk/rest/RestMethod;
.super Ljava/lang/Enum;
.source "RestMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/uservoice/uservoicesdk/rest/RestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uservoice/uservoicesdk/rest/RestMethod;

.field public static final enum DELETE:Lcom/uservoice/uservoicesdk/rest/RestMethod;

.field public static final enum GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

.field public static final enum POST:Lcom/uservoice/uservoicesdk/rest/RestMethod;

.field public static final enum PUT:Lcom/uservoice/uservoicesdk/rest/RestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/uservoice/uservoicesdk/rest/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;->GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/uservoice/uservoicesdk/rest/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;->POST:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/uservoice/uservoicesdk/rest/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;->PUT:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    new-instance v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/uservoice/uservoicesdk/rest/RestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;->DELETE:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/uservoice/uservoicesdk/rest/RestMethod;

    sget-object v1, Lcom/uservoice/uservoicesdk/rest/RestMethod;->GET:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uservoice/uservoicesdk/rest/RestMethod;->POST:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uservoice/uservoicesdk/rest/RestMethod;->PUT:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uservoice/uservoicesdk/rest/RestMethod;->DELETE:Lcom/uservoice/uservoicesdk/rest/RestMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;->$VALUES:[Lcom/uservoice/uservoicesdk/rest/RestMethod;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uservoice/uservoicesdk/rest/RestMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;

    return-object v0
.end method

.method public static values()[Lcom/uservoice/uservoicesdk/rest/RestMethod;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/uservoice/uservoicesdk/rest/RestMethod;->$VALUES:[Lcom/uservoice/uservoicesdk/rest/RestMethod;

    invoke-virtual {v0}, [Lcom/uservoice/uservoicesdk/rest/RestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uservoice/uservoicesdk/rest/RestMethod;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/team/DateRangeError;
.super Ljava/lang/Enum;
.source "DateRangeError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DateRangeError$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/DateRangeError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/DateRangeError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/DateRangeError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/team/DateRangeError;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/DateRangeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/DateRangeError;->OTHER:Lcom/dropbox/core/v2/team/DateRangeError;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dropbox/core/v2/team/DateRangeError;

    sget-object v1, Lcom/dropbox/core/v2/team/DateRangeError;->OTHER:Lcom/dropbox/core/v2/team/DateRangeError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dropbox/core/v2/team/DateRangeError;->$VALUES:[Lcom/dropbox/core/v2/team/DateRangeError;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DateRangeError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/team/DateRangeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DateRangeError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/DateRangeError;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/team/DateRangeError;->$VALUES:[Lcom/dropbox/core/v2/team/DateRangeError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/DateRangeError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/DateRangeError;

    return-object v0
.end method

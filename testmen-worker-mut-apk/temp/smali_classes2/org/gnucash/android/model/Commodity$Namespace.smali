.class public final enum Lorg/gnucash/android/model/Commodity$Namespace;
.super Ljava/lang/Enum;
.source "Commodity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/model/Commodity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Namespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/model/Commodity$Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/model/Commodity$Namespace;

.field public static final enum ISO4217:Lorg/gnucash/android/model/Commodity$Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/gnucash/android/model/Commodity$Namespace;

    const-string v1, "ISO4217"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/Commodity$Namespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/Commodity$Namespace;->ISO4217:Lorg/gnucash/android/model/Commodity$Namespace;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/gnucash/android/model/Commodity$Namespace;

    sget-object v1, Lorg/gnucash/android/model/Commodity$Namespace;->ISO4217:Lorg/gnucash/android/model/Commodity$Namespace;

    aput-object v1, v0, v2

    sput-object v0, Lorg/gnucash/android/model/Commodity$Namespace;->$VALUES:[Lorg/gnucash/android/model/Commodity$Namespace;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/Commodity$Namespace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/gnucash/android/model/Commodity$Namespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/Commodity$Namespace;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/model/Commodity$Namespace;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/gnucash/android/model/Commodity$Namespace;->$VALUES:[Lorg/gnucash/android/model/Commodity$Namespace;

    invoke-virtual {v0}, [Lorg/gnucash/android/model/Commodity$Namespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/model/Commodity$Namespace;

    return-object v0
.end method

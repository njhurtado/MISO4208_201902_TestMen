.class public final enum Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
.super Ljava/lang/Enum;
.source "DatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/adapter/DatabaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

.field public static final enum insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

.field public static final enum replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

.field public static final enum update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    const-string v1, "insert"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    new-instance v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    const-string v1, "update"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    new-instance v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    const-string v1, "replace"

    invoke-direct {v0, v1, v4}, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    sget-object v1, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->replace:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    aput-object v1, v0, v4

    sput-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->$VALUES:[Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->$VALUES:[Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual {v0}, [Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    return-object v0
.end method

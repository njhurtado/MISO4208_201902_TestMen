.class public final enum Lorg/gnucash/android/model/ScheduledAction$ActionType;
.super Ljava/lang/Enum;
.source "ScheduledAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/model/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/gnucash/android/model/ScheduledAction$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/gnucash/android/model/ScheduledAction$ActionType;

.field public static final enum BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

.field public static final enum TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;

    const-string v1, "TRANSACTION"

    invoke-direct {v0, v1, v2}, Lorg/gnucash/android/model/ScheduledAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    new-instance v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;

    const-string v1, "BACKUP"

    invoke-direct {v0, v1, v3}, Lorg/gnucash/android/model/ScheduledAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/gnucash/android/model/ScheduledAction$ActionType;

    sget-object v1, Lorg/gnucash/android/model/ScheduledAction$ActionType;->TRANSACTION:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/gnucash/android/model/ScheduledAction$ActionType;->BACKUP:Lorg/gnucash/android/model/ScheduledAction$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->$VALUES:[Lorg/gnucash/android/model/ScheduledAction$ActionType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/ScheduledAction$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;

    return-object v0
.end method

.method public static values()[Lorg/gnucash/android/model/ScheduledAction$ActionType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/gnucash/android/model/ScheduledAction$ActionType;->$VALUES:[Lorg/gnucash/android/model/ScheduledAction$ActionType;

    invoke-virtual {v0}, [Lorg/gnucash/android/model/ScheduledAction$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/gnucash/android/model/ScheduledAction$ActionType;

    return-object v0
.end method

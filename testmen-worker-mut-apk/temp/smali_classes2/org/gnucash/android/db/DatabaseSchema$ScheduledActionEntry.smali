.class public abstract Lorg/gnucash/android/db/DatabaseSchema$ScheduledActionEntry;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"

# interfaces
.implements Lorg/gnucash/android/db/DatabaseSchema$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/db/DatabaseSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScheduledActionEntry"
.end annotation


# static fields
.field public static final COLUMN_ACTION_UID:Ljava/lang/String; = "action_uid"

.field public static final COLUMN_ADVANCE_CREATION:Ljava/lang/String; = "adv_creation"

.field public static final COLUMN_ADVANCE_NOTIFY:Ljava/lang/String; = "adv_notify"

.field public static final COLUMN_AUTO_CREATE:Ljava/lang/String; = "auto_create"

.field public static final COLUMN_AUTO_NOTIFY:Ljava/lang/String; = "auto_notify"

.field public static final COLUMN_ENABLED:Ljava/lang/String; = "is_enabled"

.field public static final COLUMN_END_TIME:Ljava/lang/String; = "end_time"

.field public static final COLUMN_EXECUTION_COUNT:Ljava/lang/String; = "execution_count"

.field public static final COLUMN_LAST_RUN:Ljava/lang/String; = "last_run"

.field public static final COLUMN_RECURRENCE_UID:Ljava/lang/String; = "recurrence_uid"

.field public static final COLUMN_START_TIME:Ljava/lang/String; = "start_time"

.field public static final COLUMN_TAG:Ljava/lang/String; = "tag"

.field public static final COLUMN_TEMPLATE_ACCT_UID:Ljava/lang/String; = "template_act_uid"

.field public static final COLUMN_TOTAL_FREQUENCY:Ljava/lang/String; = "total_frequency"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final INDEX_UID:Ljava/lang/String; = "scheduled_action_uid_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "scheduled_actions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

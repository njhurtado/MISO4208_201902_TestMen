.class final Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appWidgetIds:[I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>([ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;->val$appWidgetIds:[I

    iput-object p2, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 349
    iget-object v2, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;->val$appWidgetIds:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 350
    .local v0, "widgetId":I
    iget-object v4, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$4;->val$context:Landroid/content/Context;

    invoke-static {v4, v0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateWidget(Landroid/content/Context;I)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "widgetId":I
    :cond_0
    return-void
.end method

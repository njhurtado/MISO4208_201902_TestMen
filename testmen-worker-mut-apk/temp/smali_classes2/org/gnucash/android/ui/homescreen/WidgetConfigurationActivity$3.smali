.class Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$3;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->bindListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$3;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity$3;->this$0:Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->finish()V

    .line 192
    return-void
.end method

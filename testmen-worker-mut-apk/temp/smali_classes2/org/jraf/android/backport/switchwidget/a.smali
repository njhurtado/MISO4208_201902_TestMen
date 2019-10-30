.class final Lorg/jraf/android/backport/switchwidget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lorg/jraf/android/backport/switchwidget/SwitchPreference;


# direct methods
.method private constructor <init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lorg/jraf/android/backport/switchwidget/a;->a:Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jraf/android/backport/switchwidget/a;-><init>(Lorg/jraf/android/backport/switchwidget/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/a;->a:Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->access$100(Lorg/jraf/android/backport/switchwidget/SwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jraf/android/backport/switchwidget/a;->a:Lorg/jraf/android/backport/switchwidget/SwitchPreference;

    invoke-virtual {v0, p2}, Lorg/jraf/android/backport/switchwidget/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

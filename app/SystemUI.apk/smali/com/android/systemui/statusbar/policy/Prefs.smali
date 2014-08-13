.class public Lcom/android/systemui/statusbar/policy/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field public static final DO_NOT_DISTURB_DEFAULT:Z = false

.field public static final DO_NOT_DISTURB_PREF:Ljava/lang/String; = "do_not_disturb"

.field public static final GPS_ALERT_PREF:Ljava/lang/String; = "gps_alert_pref"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "status_bar"

.field public static final SHOWN_COMPAT_MODE_HELP:Ljava/lang/String; = "shown_compat_mode_help"

.field public static final SHOWN_QUICK_SETTINGS_HELP:Ljava/lang/String; = "shown_quick_settings_help"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static read(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

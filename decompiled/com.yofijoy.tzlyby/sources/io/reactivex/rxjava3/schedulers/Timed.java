package io.reactivex.rxjava3.schedulers;

import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class Timed<T> {
    final long time;
    final TimeUnit unit;
    final T value;

    public Timed(T value, long time, TimeUnit unit) {
        Objects.requireNonNull(value, "value is null");
        this.value = value;
        this.time = time;
        Objects.requireNonNull(unit, "unit is null");
        this.unit = unit;
    }

    public T value() {
        return this.value;
    }

    public TimeUnit unit() {
        return this.unit;
    }

    public long time() {
        return this.time;
    }

    public long time(TimeUnit unit) {
        return unit.convert(this.time, this.unit);
    }

    public boolean equals(Object other) {
        if (!(other instanceof Timed)) {
            return false;
        }
        Timed timed = (Timed) other;
        return Objects.equals(this.value, timed.value) && this.time == timed.time && Objects.equals(this.unit, timed.unit);
    }

    public int hashCode() {
        int hashCode = this.value.hashCode() * 31;
        long j = this.time;
        return ((hashCode + ((int) (j ^ (j >>> 31)))) * 31) + this.unit.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.time + ", unit=" + this.unit + ", value=" + this.value + "]";
    }
}

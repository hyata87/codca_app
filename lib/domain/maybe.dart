abstract class Maybe<T> {
  factory Maybe(T value) {
    if (value == null) {
      return Maybe.nothing();
    } else {
      return Maybe.some(value);
    }
  }

  factory Maybe.nothing() = Nothing<T>;
  factory Maybe.some(T value) = Some<T>;

  Maybe<R> map<R>(R mapper(T value));

  T getOrElse(T value);
}

class Nothing<T> implements Maybe<T> {
  @override
  Maybe<R> map<R>(R mapper(T value)) {
    return Maybe.nothing();
  }

  @override
  T getOrElse(T value) {
    return value;
  }
}

class Some<T> implements Maybe<T> {
  final T _value;

  Some(T value) : this._value = value;

  @override
  Maybe<R> map<R>(R mapper(T value)) {
    return Maybe(mapper(_value));
  }

  @override
  T getOrElse(T value) {
    return _value;
  }
}
